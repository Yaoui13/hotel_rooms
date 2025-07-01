class DropHotelsTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :hotels, force: :cascade
  end
end

