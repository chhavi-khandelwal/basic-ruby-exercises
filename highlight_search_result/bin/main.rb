require_relative '../lib/string'

puts 'Enter the string'
input_string = gets.chomp
puts 'Enter a letter or a word you want to search in the string'
pattern = gets.chomp
string, word_occurence = input_string.search_text(pattern)
puts "#{ input_string } => #{ string } \nTotal Occurences found:#{ word_occurence }"