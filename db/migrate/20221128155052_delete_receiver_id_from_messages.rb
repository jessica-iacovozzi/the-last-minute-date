class DeleteReceiverIdFromMessages < ActiveRecord::Migration[7.0]
  def change
    remove_column :messages, :receiver_id
  end
end
