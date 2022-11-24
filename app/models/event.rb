class Event < ApplicationRecord
  has_many :tickets, dependent: :destroy
  has_many :users, through: :tickets

  validates :title, :date, :category, :address, :price, :picture_url, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end
