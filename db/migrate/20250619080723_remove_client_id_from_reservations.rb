class RemoveClientIdFromReservations < ActiveRecord::Migration[7.0]
  def change
    remove_column :reservations, :client_id, :integer
  end
end
