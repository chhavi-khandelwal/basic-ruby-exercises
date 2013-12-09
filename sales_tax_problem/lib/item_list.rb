require_relative 'item'
require_relative 'table'

class ItemList
  
  def initialize(items)
    @items = items
  end

  def get_grand_total
    grand_total = 0
    @items.each do |item|
      grand_total += item.sub_total
    end
    grand_total.floor
  end

  def get_details
    details = []
    @items.each do |item|
      details.push(item.details)
    end
    details
  end

  def display_items
    header = ['Name', 'Imported', 'Exemption', 'Price', 'SubTotal']
    table = Table.new(header, get_details, get_grand_total)
    table.display_table
  end

  private :get_grand_total, :get_details

end