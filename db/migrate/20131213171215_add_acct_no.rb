class AddAcctNo < ActiveRecord::Migration
  def up
    add_column :customers, :account_no, :integer
  end

  def down
    remove_column :customers, :account_no
  end
end
