require 'prime'
class Integer
  def prime_numbers_upto
    2.step(self, 1) { |number|
      if number.prime?
        yield number
      end
    }
  end
end