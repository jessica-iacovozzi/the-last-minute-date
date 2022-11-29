class Conversation < ApplicationRecord
  has_many :messages
  belongs_to :user1, class_name: "User", foreign_key: :user1_id
  belongs_to :user2, class_name: "User", foreign_key: :user2_id

  scope :conversation_exist, lambda { |sender, receiver|
                               where("(user1_id = ? AND user2_id = ?) OR (user2_id = ? AND user1_id = ?)", sender, receiver, receiver, sender)
                             }
end
