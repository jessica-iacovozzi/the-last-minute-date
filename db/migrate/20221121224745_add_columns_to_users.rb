class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :username, :string
    add_column :users, :tags, :string, array: true, default: []
    add_column :users, :picture_url, :string
    add_column :users, :age, :integer
    add_column :users, :description, :text
  end
end
