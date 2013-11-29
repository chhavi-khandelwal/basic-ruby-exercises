require_relative '../lib/alphabet_occurence'

puts 'Enter a String'
input_string = gets.chomp
alphabetOccurence = AlphabetOccurence.new
alphabetOccurence.count(input_string).each { |key, value| puts "#{ key } : #{ value }" }