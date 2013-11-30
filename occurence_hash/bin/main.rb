require_relative '../lib/string'

puts 'Enter a string'
input_string = gets.chomp
input_string.count_alphabet_occurence.each { |key, value| puts "#{ key } : #{ value }" }