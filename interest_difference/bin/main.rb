require_relative '../lib/interest'

puts 'Enter the principal amount'
principal = gets.chomp
puts 'Enter the time'
time = gets.chomp
if principal.to_f <= 0
  puts 'Enter a valid principal'
elsif time.to_f <= 0
  puts 'Enter a valid time-period'
else
  interest = Interest.new(principal, time) { |simple_interest, compoud_interest| (compoud_interest - simple_interest).round(3) }
  puts "Difference between compound and simple interest for rate 10% p.a. = Rs.#{ interest.difference }"
end