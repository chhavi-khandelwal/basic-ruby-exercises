require_relative '../lib/integer'

puts 'Enter a number upto which you want to find the prime nos.'
integer = gets.chomp
puts "prime_numbers_upto #{ integer }"
if integer.to_i <= 1
  puts 'Prime no. does not exist'
else
  integer.to_i.prime_numbers_upto { |number| puts number }
end