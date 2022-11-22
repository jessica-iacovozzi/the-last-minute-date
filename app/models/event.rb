class Event < ApplicationRecord
  has_many :tickets
  has_many :messages

  # validates :title, :date, :category, :address, :description, :price, :artist, :picture_url, presence: true
end
