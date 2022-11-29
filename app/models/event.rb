class Event < ApplicationRecord
  has_many :tickets, dependent: :destroy
  has_many :users, through: :tickets

  validates :title, :date, :category, :address, :price, :picture_url, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_category_title_artist_date_and_city,
                  against: %i[category title artist city date],
                  using: {
                    tsearch: { prefix: true } # <-- now `superman batm` will return something!
                  }
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end
