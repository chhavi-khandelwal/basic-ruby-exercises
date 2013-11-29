class AlphabetOccurence
  def count(input_str)
    string_hash = Hash.new(0)
    input_str.upcase.each_char { |char| string_hash[char] += 1 if char =~ /[A-Z]/ }
    string_hash
  end
end