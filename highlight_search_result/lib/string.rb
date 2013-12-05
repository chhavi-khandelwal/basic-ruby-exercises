class String
  def search_text(pattern)
    word_occurence = 0
    highlighted_string = gsub(/#{pattern}/i) do |match|
      word_occurence += 1
      match.replace "(#{ match })"
    end
    return [highlighted_string, word_occurence]
  end
end