class Message < ApplicationRecord
  belongs_to :event
  belongs_to :sender, class_name: "User"
  belongs_to :receiver, class_name: "User"

  validates :content, presence: true, length: { minimum: 2 }
end
