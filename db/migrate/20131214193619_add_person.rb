class AddPerson < ActiveRecord::Migration
  def up
    add_column :sales, :person, :string
  end

  def down
    remove_column :sales, :person
  end
end
