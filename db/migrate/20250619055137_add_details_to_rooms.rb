class AddDetailsToRooms < ActiveRecord::Migration[7.0]
  def change
    add_column :rooms, :capacity, :integer unless column_exists?(:rooms, :capacity)
    add_column :rooms, :price, :integer unless column_exists?(:rooms, :price)
    add_column :rooms, :description, :text unless column_exists?(:rooms, :description)
    add_column :rooms, :photo_url, :string unless column_exists?(:rooms, :photo_url)
    add_column :rooms, :city, :string unless column_exists?(:rooms, :city)
  end
end
