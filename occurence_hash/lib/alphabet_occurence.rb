class AlphabetOccurence
  def count(input_str)
    input_str = input_str.upcase
    string_hash = Hash.new(0)
    input_str.each_char { |char| string_hash[char] += 1 if char =~ /[\w]/i }
    string_hash
  end
end