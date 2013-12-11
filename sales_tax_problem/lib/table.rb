require_relative '../lib/item'

class Table
  HEADERS = ['Name', 'Imported', 'Exemption', 'Price', 'SubTotal']
  STYLE = '|%-15s|%-15s|%-15s|%-15s|%-15s'

  def display_items_grid
    print STYLE % HEADERS
    puts Item.all
    puts "GRAND-TOTAL = Rs. #{ Item.grand_total }"
  end

end