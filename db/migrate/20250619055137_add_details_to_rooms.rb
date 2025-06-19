class AddDetailsToRooms < ActiveRecord::Migration[7.0]
  def change
    add_column :rooms, :description, :text
    add_column :rooms, :city, :string
    add_column :rooms, :photo_url, :string
  end
end
