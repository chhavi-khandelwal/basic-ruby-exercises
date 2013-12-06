require_relative '../lib/name'
require_relative '../lib/name_not_capitalized_exception'
require_relative '../lib/name_not_null_exception'

puts 'Enter firstname'
firstname = gets.chomp.strip
puts 'Enter secondname'
secondname = gets.chomp.strip
name = Name.new(firstname, secondname)

begin
puts name.full_name
rescue NameNotNullException => message
  puts message
rescue NameNotCapitalizedException => message
  puts message
end