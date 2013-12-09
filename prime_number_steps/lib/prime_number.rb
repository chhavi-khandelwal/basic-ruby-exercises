require 'prime'
class PrimeNumber
  def print_upto(limit)
    2.step(limit) do |i|
      if prime_number?(i)
        yield i
      end
    end
  end

  def prime_number?(i)
    flag = true
    2.step(Math.sqrt(i)) do |j|
      if i % j == 0
        flag = false
        break
      end
    end
    flag
  end

end