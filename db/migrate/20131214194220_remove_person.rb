class RemovePerson < ActiveRecord::Migration
  def up
    remove_column :sales, :person
  end

  def down
    add_column :sales, :person
  end
end
