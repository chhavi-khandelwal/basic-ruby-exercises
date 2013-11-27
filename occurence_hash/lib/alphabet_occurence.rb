class AlphabetOccurence
  def count_alphabet_occurrence(input_str)
    input_str = input_str.upcase
    string_hash = Hash.new(0)
    input_str.each_char { |char| string_hash[char] += 1 }
    string_hash
  end 
end