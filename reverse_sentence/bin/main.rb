require_relative '../lib/string'

puts 'Enter a sentence'
sentence = gets.chomp
puts "Reversed sentence -> \n#{ sentence.reverse_words_order }"