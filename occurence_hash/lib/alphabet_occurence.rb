class AlphabetOccurence
  def count(input_str)
    string_hash = Hash.new(0)
    input_str.upcase.gsub(/[A-Z]/i) { |char| string_hash[char] += 1 }
    string_hash
  end
end