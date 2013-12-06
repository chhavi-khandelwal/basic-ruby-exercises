require_relative '../lib/bike'

bike1 = Bike.new('ABC', 40000, 'Dealer1')
puts bike1
bike1.price = 50000
puts bike1