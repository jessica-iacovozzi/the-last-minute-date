class Event < ApplicationRecord
  has_many :tickets
  has_many :users, through: :tickets

  # validates :title, :date, :category, :address, :description, :price, :artist, :picture_url, presence: true
end
