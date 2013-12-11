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

def store_n_times
  n_times = []
  loop do
    n_times << get_valid_time
    puts 'Want to enter another?(y/n)'
    response = true if gets.chomp == 'n'
    break if response
  end
  n_times
end

puts 'Enter time in 24 hour time format (h:m:s)'
n_times = store_n_times
net_time, day = MilitaryTime.sum(n_times)
print "#{ n_times } -> #{ day == 0 ? '' : "#{ day } day & " }#{ net_time.hour }:#{ net_time.min }:#{ net_time.sec }\n"