require_relative '../lib/integer'

puts 'Enter a positive integer'
integer = gets.chomp
if integer =~ /^\+?\d+$/
  puts "Factorial of #{ integer } -> #{ integer.to_i.factorial }"
else
  puts 'Enter a valid positive integer'
end