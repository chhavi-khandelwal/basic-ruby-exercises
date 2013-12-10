require_relative '../lib/integer'

puts 'Enter a positive integer'
integer = gets.chomp

if integer =~ /^[-+]?\d+$/
  begin
    puts "Factorial of #{ integer } -> #{ integer.to_i.factorial }"
  rescue NegativeNumberException => message
    puts message
  end
else
  raise NotAnIntegerException, 'Enter a valid integer'
end