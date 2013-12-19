require_relative '../lib/table'

def input_item_list
  loop do
    name = product_name
    imported = product_imported_status
    exemption = product_sales_tax_status
    price = product_price
    Item.new(name, imported, exemption, price)
    print 'Do you want to add more items to your list(y/n): '
    break if gets.chomp.strip =~ /^n$/i
  end
end

def product_name
  begin
    print 'Name of the product: '
    name = gets.chomp.strip
  end while !Item.valid_name?(name)
  name
end

def product_price
  begin
    print 'Price:'
    price = gets.chomp.strip
  end while !Item.valid_price?(price)
  price
end

def product_imported_status
  begin
    print 'Imported?[yes/no]: '
    imported = gets.chomp.strip
  end  while imported !~ /^no|yes$/i
  imported
end

def product_sales_tax_status
  begin
    print 'Exempted from sales tax[yes/no]? '
    exemption = gets.chomp.strip
  end while exemption !~ /^no|yes$/i
  exemption
end

input_item_list
table = Table.new
table.display_items_grid