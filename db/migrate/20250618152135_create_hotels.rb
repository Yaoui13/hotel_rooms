class CreateHotels < ActiveRecord::Migration[7.0]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :address
      t.integer :price
      t.text :description
      t.string :photo

      t.timestamps
    end
  end
end
