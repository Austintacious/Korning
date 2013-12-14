class AddPricePerUnit < ActiveRecord::Migration
  def up
    add_column :sales, :price_per_unit, :integer
  end

  def down
    remove_column :sales, :price_per_unit
  end
end
