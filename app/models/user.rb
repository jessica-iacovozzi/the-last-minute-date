class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :messages
  has_many :conversations, through: :messages

  # this is how you access chats by typing user.conversation_as_user1 or user2
  has_many :conversations_as_user1, class_name: 'Conversation', foreign_key: :user1_id
  has_many :conversations_as_user2, class_name: 'Conversation', foreign_key: :user2_id

  has_many :tickets, dependent: :destroy
  has_many :events, through: :tickets
  has_many_attached :photos

  validates :username, :first_name, :description, :tags, presence: true
  validates :username, uniqueness: true
  validates :age, numericality: { only_integer: true }
end
