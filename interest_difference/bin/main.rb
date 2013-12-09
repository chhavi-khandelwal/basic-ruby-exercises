require_relative '../lib/interest'

puts 'Enter the principal amount'
principal = gets.chomp
puts 'Enter the time'
time = gets.chomp
if principal.to_i <= 0
  puts 'Enter a valid principal'
elsif time.to_i <= 0
  puts 'Enter a valid time-period'
else
  interest = Interest.new(principal, time) { |simple_interest, compoud_interest| (compoud_interest - simple_interest).round(3) }
  interest.print_difference
end