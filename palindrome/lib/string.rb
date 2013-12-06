class String
  def palindrome?
    casecmp(reverse) == 0
  end
end