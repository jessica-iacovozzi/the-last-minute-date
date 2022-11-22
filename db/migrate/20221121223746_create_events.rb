class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :title
      t.date :date
      t.string :category
      t.string :address
      t.text :description
      t.float :price
      t.string :artist
      t.string :picture_url

      t.timestamps
    end
  end
end
