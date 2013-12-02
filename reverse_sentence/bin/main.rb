require_relative '../lib/string'

puts 'Enter a string'
input_string = gets.chomp
puts "String reversed by each word -> \n#{ input_string.reverse_by_words }"