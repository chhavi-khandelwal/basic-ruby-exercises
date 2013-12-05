require_relative '../lib/interest'

puts 'Enter the principal amount'
principal = gets.chomp
puts 'Enter the time'
time = gets.chomp
interest = Interest.new(principal, time) { |simple_interest, compoud_interest| (compoud_interest - simple_interest).round(3) }
puts interest.compute_difference