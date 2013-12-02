require_relative '../lib/integer'

puts 'Enter a positive integer'
integer = gets.chomp.to_i
puts "Factorial of #{ integer } -> #{ integer.factorial }"