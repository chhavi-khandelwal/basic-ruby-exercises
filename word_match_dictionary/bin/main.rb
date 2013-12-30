require_relative '../lib/dictionary'

words = ['testingg123', 'testinG23542', 'asdtest', 'sazwqa']
dictionary = Dictionary.new(words)
puts 'Enter a string'
input_string = gets.chomp
puts "result = #{ dictionary.find(input_string) }"