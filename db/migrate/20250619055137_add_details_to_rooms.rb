class AddDetailsToRooms < ActiveRecord::Migration[7.0]
  def change
    unless column_exists?(:rooms, :description)
      add_column :rooms, :description, :text
    end

    unless column_exists?(:rooms, :photo_url)
      add_column :rooms, :photo_url, :string
    end

    unless column_exists?(:rooms, :price)
      add_column :rooms, :price, :integer
    end

    unless column_exists?(:rooms, :capacity)
      add_column :rooms, :capacity, :integer
    end

    unless column_exists?(:rooms, :city)
      add_column :rooms, :city, :string
    end
  end
end
