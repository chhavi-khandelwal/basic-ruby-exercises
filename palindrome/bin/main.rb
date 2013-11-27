require_relative '../lib/string'
require_relative '../lib/palindrome'

puts 'Enter the string'
text = gets.chomp
palindrome = Palindrome.new
text =~ /[^q]/i ? (palindrome.check_palindromic(text) ?	(puts "#{ text } is a Palindrome") : (puts "#{ text } is not a Palindrome")) : nil