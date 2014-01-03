class Dictionary
  def initialize(*words)
    @words = words.flatten
  end

  def find(pattern)
    pattern = Regexp.new("^#{ pattern.strip }", true)
    @words.select { |word|  word.match(pattern) }
  end
end