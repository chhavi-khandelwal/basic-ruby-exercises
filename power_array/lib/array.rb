class Array
  def power(x)
    collect { |element| element ** x }
  end
end