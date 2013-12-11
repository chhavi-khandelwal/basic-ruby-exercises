require_relative '../lib/table'

def input_item_list
  loop do
    name = price = ''
    begin
      print 'Name of the product: '
      name = gets.chomp.strip
    end while !Item.valid_name?(name)

    begin
      print 'Imported?[yes/no]: '
      imported = gets.chomp.strip
    end  while imported !~ /^no|yes$/i

    begin
      print 'Exempted from sales tax[yes/no]? '
      exemption = (gets.chomp.strip =~ /^yes$/i)
    end while imported !~ /^no|yes$/i

    begin
      print 'Price:'
      price = gets.chomp.strip
    end while !Item.valid_price?(price)

    Item.new(name, imported, exemption, price)

    print 'Do you want to add more items to your list(y/n): '
    break if gets.chomp.strip =~ /^n$/i
  end
end

input_item_list
table = Table.new
table.display_items_grid