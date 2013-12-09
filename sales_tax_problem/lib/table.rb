class Table

  def initialize(headings, item_details, grand_total)
    @headings = headings
    @item_details = item_details
    @grand_total = grand_total
  end

  def display_table
    @headings.each do |heading|
      print "|%-15s" % ["#{ heading }"]
    end
    @item_details.each do |item_detail|
      item_detail.each do |detail|
        print "|%-15s" % ["#{ detail }"]
      end 
      print "\n"
   end
   puts "GRAND-TOTAL = Rs. #{ @grand_total }"
  end

end