class RemoveHotelIdFromRooms < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :rooms, :hotels
    remove_index :rooms, :hotel_id
    remove_column :rooms, :hotel_id
  end
end

