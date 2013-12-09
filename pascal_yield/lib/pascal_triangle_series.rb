class PascalTriangleSeries
  def print_upto(limit)
    1.upto(limit) do |i|
      0.upto(i) do |j|
        if i == j || j == 0
          yield 1
        else
          n = (1..i).to_a.inject(:*)
          r = (1..i-j).to_a.inject(:*)
          n_r = (1..j).to_a.inject(:*)
          yield n / (r * n_r)
        end
      end
      print "\n"
    end
  end

  def method_name
    
  end
end
# iterators, change file name