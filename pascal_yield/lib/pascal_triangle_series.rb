class PascalTriangleSeries
  def print_upto(limit)
    0.upto(limit) do |i|
      0.upto(i) do |j|
        i == j || j == 0 ? (yield 1) : (yield factorial(i) / (factorial(j) * factorial(i - j)))
      end
      print "\n"
    end
  end

  def factorial(n)
    (1..n).to_a.inject(:*)
  end

end