class String
  def reverse_by_words
    split(/\s/).reverse.join(' ')
  end
end