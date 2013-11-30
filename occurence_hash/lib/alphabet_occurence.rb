class String
  def count_alphabet_occurence
    alphabet_occurence_collection = Hash.new(0)
    upcase.gsub(/[A-Z]/) { |char| alphabet_occurence_collection[char] += 1 }
    alphabet_occurence_collection
  end
end