class Integer
  def factorial
    raise NegativeNumberException, 'Negative Integer Error' if self < 0
    self == 0 ? 1 : (1..self).inject(:*)
  end
end