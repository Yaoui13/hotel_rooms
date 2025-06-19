class AddCapacityToRooms < ActiveRecord::Migration[7.0]
  def change
    add_column :rooms, :capacity, :integer
  end
end
