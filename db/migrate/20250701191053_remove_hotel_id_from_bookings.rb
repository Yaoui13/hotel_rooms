class RemoveHotelIdFromBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :hotel_id, :bigint
  end
end
