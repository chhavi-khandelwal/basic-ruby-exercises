require 'prime'
class PrimeNumber
  def print_upto(limit)
    2.step(limit, 1) do |i|
      if prime_number?(i)
        yield i
      end
    end
  end

  def prime_number?(i)
    flag = false
    2.step(Math.sqrt(i).ceil, 1) do |j|
      flag = i % j == 0 ? false : true
      if flag == false
        break
      end
    end
    flag
  end

end