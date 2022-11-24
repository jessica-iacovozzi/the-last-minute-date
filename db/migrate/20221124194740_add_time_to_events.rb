class AddTimeToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :time, :string
    add_column :events, :city, :string
    add_column :events, :venue, :string
  end
end
