require_relative '../lib/fibonacci'

puts "Fibonacci-Series\n"
fibonacci = Fibonacci.new
fibonacci.fib_up_to(1000) { |current_val| print current_val, " " }
puts "\n"