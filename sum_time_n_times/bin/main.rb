require_relative '../lib/military_time'

def get_valid_time
  input_time = ''
  loop do
    input_time = gets.chomp
    break if MilitaryTime.valid?(input_time)
    puts 'Enter a valid time'
  end
  input_time
end

def store_n_time
  loop do
    MilitaryTime.new(get_valid_time)
    puts 'Want to enter another?(y/n)'
    response = true if gets.chomp == 'n'
    break if response
  end
end

puts 'Enter no. of 24 hour time values you want to add'
store_n_time
net_time, day = MilitaryTime.sum
MilitaryTime.all.each { |time| print "#{ time.hour }:#{ time.min }:#{ time.sec } "}
print "-> #{ day == 0 ? '' : "#{ day } day & " }#{ net_time.hour }:#{ net_time.min }:#{ net_time.sec }\n"