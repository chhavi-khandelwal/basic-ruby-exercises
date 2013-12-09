class Interest
  RATE = 0.1

  def initialize(principal, time, &block)
    @principal, @time, @block = principal.to_i, time.to_i, block
  end

  def get_simple_interest
    simple_interest = @principal * RATE * @time
  end
  
  def get_compound_interest
    compoud_interest = @principal * ((1 + RATE) ** @time - 1)
  end

  def print_difference
    puts "Difference between compound and simple interest for rate 10% p.a. = Rs.#{ @block.call(get_simple_interest, get_compound_interest) }"
  end
end