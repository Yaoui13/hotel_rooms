class AddCapacityToHotels < ActiveRecord::Migration[7.0]
  def change
    add_column :hotels, :capacity, :integer
  end
end
