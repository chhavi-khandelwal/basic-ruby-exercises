require_relative '../lib/alphabet_occurence'

puts 'Enter a String'
alphabetOccurence = AlphabetOccurence.new
alphabetOccurence.count_alphabet_occurrence(gets.chomp).each { |key, value| puts "#{ key } : #{ value }" }