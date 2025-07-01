class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms do |t|
      t.string :name, null: false
      t.string :city
      t.integer :price
      t.integer :capacity
      t.text :description
      t.string :photo_url

      t.timestamps
    end
  end
end

