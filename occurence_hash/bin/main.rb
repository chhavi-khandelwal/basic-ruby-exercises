require_relative '../lib/alphabet_occurence'

puts 'Enter a String'
input_string = gets.chomp
input_string.count_alphabet_occurence.each { |key, value| puts "#{ key } : #{ value }" }