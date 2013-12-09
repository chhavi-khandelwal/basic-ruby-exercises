class Integer
  def factorial
    self == 0 ? 1 : (1..self).inject(:*)
  end
end