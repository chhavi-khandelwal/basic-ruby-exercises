require_relative '../lib/string'

quit_regexp = /^q$/i
trimmed_string_regexp = /^\s*$/

loop do
  puts 'Enter the string'
  input_string = gets.chomp
  case input_string
  when quit_regexp
    break
  when trimmed_string_regexp
    puts 'Enter a valid string'
  else
    puts "#{ input_string } is #{ input_string.palindrome?  ? '' : 'not' } a Palindrome"
  end
end