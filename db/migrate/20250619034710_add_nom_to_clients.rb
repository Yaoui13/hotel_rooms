class AddNomToClients < ActiveRecord::Migration[7.0]
  def change
    add_column :clients, :nom, :string
  end
end
