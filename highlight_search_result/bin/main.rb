require_relative '../lib/string'

puts 'Enter the string'
input_string = gets.chomp
puts 'Enter a letter or a word you want to search in the string'
pattern = gets.chomp
puts input_string.search_text(pattern) { |word_count| puts "#{ pattern }_count- #{ word_count }" }