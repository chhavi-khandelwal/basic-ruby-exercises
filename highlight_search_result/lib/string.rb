class String
  def search_text(pattern)
    word_count = 0
    gsub!(/#{pattern}/i) { |match|
      word_count += 1
      match.replace "(#{ match })"
    }
    yield word_count
    self
  end
end