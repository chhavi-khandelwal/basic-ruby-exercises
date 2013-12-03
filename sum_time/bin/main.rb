require_relative '../lib/time'
require_relative '../lib/string'
require 'time'

puts 'Enter first time in 24 hour time format (h:m:s)'
time1 = time2 = ''
time1 = time1.get_valid_time
time1 = Time.parse(time1)

puts 'Enter second time in 24 hour time format (h:m:s)'
time2 = time2.get_valid_time
time2 = Time.parse(time2)
puts time1.add_to(time2)