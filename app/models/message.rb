class Message < ApplicationRecord
  belongs_to :conversation
  belongs_to :sender, class_name: "User" # points to the user tag name

  validates :content, presence: true, length: { minimum: 2 }
  def sender?(a_sender)
    sender.id == a_sender.id
  end
end
