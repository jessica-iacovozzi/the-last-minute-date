class Event < ApplicationRecord
  has_many :tickets

  # validates :title, :date, :category, :address, :description, :price, :artist, :picture_url, presence: true
end
