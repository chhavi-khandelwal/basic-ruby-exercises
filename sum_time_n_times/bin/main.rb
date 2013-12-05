require_relative '../lib/time'
require_relative '../lib/string'

puts 'Enter no. of 24 hour time values you want to add'
time_count = gets.chomp
*time_n = []
puts 'Enter time in 24 hour time format (h:m:s)'
time1 = ''
time1 = time1.get_valid_time.parse_time

(time_count.to_i - 1).times do
  input_time = ''
  time_n << input_time.get_valid_time.parse_time
end
puts time1.add_to(*time_n)