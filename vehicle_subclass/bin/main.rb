require_relative '../lib/bike'

bike1 = Bike.new('ABC', 40000, 'Dealer1')
bike1.to_s
bike1.price = 50000
bike1.to_s