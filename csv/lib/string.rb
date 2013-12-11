class String
  def pluralize(count)
    count > 1 ? "\n#{ self }s" : "\n#{ self }"
  end
end