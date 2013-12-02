class Integer
  def factorial
    case
    when self.to_s =~ /-[\d]+/
      'cannot be calculated'
    when self == 0
      1
    else
      (1..self).inject(:*)
    end
  end
end