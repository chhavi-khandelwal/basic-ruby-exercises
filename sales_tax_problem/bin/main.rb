require_relative '../lib/string'
require_relative '../lib/item_list'
require_relative '../lib/item'

items = []
loop do
  print 'Name of the product: '
  name = gets.chomp.strip 
  name_flag = name.is_valid_name?
  print 'Imported?[yes/no]: '
  imported = true if gets.chomp.strip =~ /^yes$/i
  print 'Exempted from sales tax[yes/no]? '
  exemption = true if gets.chomp.strip =~ /^yes$/i
  print 'Price:'
  price = gets.chomp.strip
  price_flag = price.is_valid_price?
  items << Item.new(name, imported, exemption, price) if name_flag && price_flag
  print 'Do you want to add more items to your list(y/n): '
  break if gets.chomp.strip =~ /^n$/i
end

item_list = ItemList.new(items)
item_list.display_items