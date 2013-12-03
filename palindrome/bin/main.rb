require_relative '../lib/string'

loop do
  puts 'Enter the string'
  input_string = gets.chomp
  if input_string =~ /^q$/i
    break
  else
    puts "#{ input_string } is #{ input_string.palindrome?  ? '' : 'not' } a Palindrome"
  end
end