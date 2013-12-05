require_relative 'vehicle'

class Bike < Vehicle
  def initialize(name, price, dealer)
    super(name, price)
    @dealer = dealer
  end

  def to_s
    super
    puts "Dealer: #{ @dealer }"
  end
end