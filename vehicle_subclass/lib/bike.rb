require_relative 'vehicle'

class Bike < Vehicle
  attr_reader :dealer
  def initialize(name, price, dealer)
    super(name, price)
    @dealer = dealer
  end

  def show_contents
    super
    puts "Dealer: #{ @dealer }"
  end
end