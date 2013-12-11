require_relative '../lib/military_time'

def get_valid_time
  begin
    military_time = MilitaryTime.new(gets.chomp)
  rescue InvalidTimeException => message
    puts message
    retry
  end
  military_time
end

puts 'Enter first time in 24 hour time format (h:m:s)'
time1 = get_valid_time
puts 'Enter second time in 24 hour time format (h:m:s)'
time2 = get_valid_time
time1, time2, day, sum_time = MilitaryTime.add(time1, time2)
puts "(#{ time1.hour }:#{ time1.min }:#{ time1.sec },#{ time2.hour }:#{ time2.min }:#{ time2.sec }) -> #{ day == 0 ? '' : "#{ day } day &" } #{ sum_time.hour }:#{ sum_time.min }:#{ sum_time.sec }"