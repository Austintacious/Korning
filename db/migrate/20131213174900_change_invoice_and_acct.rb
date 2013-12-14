class ChangeInvoiceAndAcct < ActiveRecord::Migration
  def up
    remove_column :customers, :account_no
    remove_column :customers, :invoice_frequency
    add_column :customers, :account_no, :string
    add_column :customers, :invoice_frequency, :string
  end

  def down
    remove_column :customers, :account_no
    remove_column :customers, :invoice_frequency
    add_column :customers, :account_no, :integer
    add_column :customers, :invoice_frequency, :integer
  end
end
