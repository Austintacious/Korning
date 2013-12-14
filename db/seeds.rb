require 'csv'

datafile = Rails.root + 'db/data/sales.csv'

CSV.foreach(datafile, headers: true) do |row|
  Employee.find_or_create_by(first_name: row['employee'].split(" ")[0]) do |e|
    e.last_name = row['employee'].split(" ")[1]
    e.email = row['employee'].split(" ")[2].delete("()")
    puts "#{e.first_name} processed"
  end

  Customer.find_or_create_by(account_no: row['customer_and_account_no'].split(" ")[1].delete("()")) do |c|
    c.website = "www.#{row['customer_and_account_no'].split(" ")[0].downcase}.com"
    c.invoice_frequency = row['invoice_frequency']
  end

  Product.find_or_create_by(name: row['product_name'])

  Sale.find_or_create_by(invoice_no: row['invoice_no']) do |s|
    s.sale_date = row['sale_date']
    s.sale_amount = row['sale_amount'].delete("$")
    s.units_sold = row['units_sold']
    s.price_per_unit = (row['sale_amount'].delete("$").to_f / row['units_sold'].to_f)
    s.person = row['employee'].split(" ")[0]
  end

end