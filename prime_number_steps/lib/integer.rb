class Integer
  def prime_numbers_upto
    2.step(self, 1) { |i|
      flag = false
      2.step(Math.sqrt(i).ceil, 1) { |j|
        if i % j == 0
          flag = false
          break
        else
          flag = true
        end  
      }
      if flag == true
        yield i
      end 
    }
  end
end