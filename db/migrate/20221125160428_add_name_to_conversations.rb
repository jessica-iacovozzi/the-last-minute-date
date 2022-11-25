class AddNameToConversations < ActiveRecord::Migration[7.0]
  def change
    add_column :conversations, :name, :string
  end
end
