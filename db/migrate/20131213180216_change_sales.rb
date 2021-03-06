class ChangeSales < ActiveRecord::Migration
  def up
    remove_column :sales, :employee
    remove_column :sales, :customer_and_account_no
    remove_column :sales, :product_name
    remove_column :sales, :invoice_frequency
  end

  def down
    add_column :sales, :employee, :string
    add_column :sales, :customer_and_account_no, :string
    add_column :sales, :product_name, :string
    add_column :sales, :invoice_frequency, :string
  end
end
