require_relative '../lib/name'


puts 'Enter firstname'
firstname = gets.chomp.strip
puts 'Enter secondname'
secondname = gets.chomp.strip

begin
  name = Name.new(firstname, secondname)
rescue NameNotNullException => message
  puts message
rescue NameNotCapitalizedException => message
  puts message
else
  puts name.full_name
end