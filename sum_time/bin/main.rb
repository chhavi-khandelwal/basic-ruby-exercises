require_relative '../lib/military_time'
require 'time'

def get_valid_time
  input_time = ''
  loop do
    input_time = gets.chomp
    break if MilitaryTime.valid?(input_time)
    puts 'Enter a valid time'
  end
  Time.parse(input_time)
end

military_time = MilitaryTime.new
puts 'Enter first time in 24 hour time format (h:m:s)'
time1 = get_valid_time
puts 'Enter second time in 24 hour time format (h:m:s)'
time2 = get_valid_time
day, time = military_time.add_time(time1, time2)
puts "(#{ time1.hour }:#{ time1.min }:#{ time1.sec },#{ time2.hour }:#{ time2.min }:#{ time2.sec }) -> #{ day == 0 ? '' : "#{ day } day &" } #{ time.hour }:#{ time.min }:#{ time.sec }"