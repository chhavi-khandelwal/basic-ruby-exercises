require_relative '../lib/customer'

customer1 = Customer.new('A')
customer1.withdraw(2000)
customer2 = Customer.new('B')
customer2.deposit(500)
customer2.withdraw(100)