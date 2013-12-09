require 'prime'
class PrimeNumber
  def print_upto(limit)
    2.step(limit, 1) do |number|
      if number.prime?
        yield number
      end
    end
  end
end