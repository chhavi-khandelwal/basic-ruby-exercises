require_relative '../lib/integer'
require_relative '../lib/not_an_integer_exception'
require_relative '../lib/negative_number_exception'

puts 'Enter a positive integer'
integer = gets.chomp
if integer =~ /^[-+]?\d+$/
  begin
    puts "Factorial of #{ integer } -> #{ integer.to_i.factorial }"
  rescue NegativeNumberException => message
    puts message
  end
else
  begin
    raise NotAnIntegerException, 'Enter a valid integer'
  rescue NotAnIntegerException => message
    puts message
  end
end