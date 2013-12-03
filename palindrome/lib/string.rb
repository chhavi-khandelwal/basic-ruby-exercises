class String
  def palindrome?
    upcase == reverse.upcase
  end
end