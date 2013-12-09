require_relative '../lib/prime_number'

puts 'Enter a number upto which you want to find the prime nos.'
number = gets.chomp
if number =~ /\D/
  puts 'Enter a valid number'
else
  prime_number = PrimeNumber.new
  puts "prime_numbers_upto #{ number }"
  prime_number.print_upto(number.to_i) { |number| puts number }
end