class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :sent_messages, class_name: "Message", foreign_key: :sender_id, dependent: :destroy
  has_many :received_messages, class_name: "Message", foreign_key: :receiver_id, dependent: :destroy
  has_many :conversations, through: :sent_messsages, dependent: :destroy
  has_many :tickets, dependent: :destroy

  # validates :first_name, :username, :preferences, :picture_url, :age, :description, presence: true
  # validates :username, uniqueness: true
  # validates :age, numericality: { only_integer: true }
end
