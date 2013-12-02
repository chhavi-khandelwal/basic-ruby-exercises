require_relative '../lib/integer'

puts 'Enter a number upto which you want to find the prime nos.'
integer = gets.chomp
puts "prime_numbers_upto #{ integer }"
if integer == 2
  puts 2
else
  puts "2"
  integer.to_i.prime_numbers_upto { |i| puts i }
end