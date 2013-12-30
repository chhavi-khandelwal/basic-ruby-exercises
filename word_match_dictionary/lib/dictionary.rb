class Dictionary
  def initialize(*words)
    @words = words.flatten.map(&:downcase)
  end

  def find(match)
    match.downcase!.strip!
    @words.select { |word| word.start_with?(match) }
  end
end