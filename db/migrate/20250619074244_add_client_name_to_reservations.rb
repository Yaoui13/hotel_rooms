class AddClientNameToReservations < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :client_name, :string
  end
end
