class PascalTriangleSeries
  def print_upto(limit)
    for i in 0..limit
      for j in 0..i
        if i == j || j == 0
          yield 1
        else
          n = (1..i).to_a.inject(:*).to_i
          r = (1..i-j).to_a.inject(:*).to_i
          n_r = (1..j).to_a.inject(:*).to_i
          yield n / (r * n_r)
        end
      end
      print "\n"
    end
  end
end