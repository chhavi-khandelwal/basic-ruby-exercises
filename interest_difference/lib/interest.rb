class Interest
  def initialize(p, t, &block)
    @p, @t, @block = p.to_i, t.to_i, block
    @r = 0.1
  end

  def calculate_simply
    simple_interest = @p * @r * @t
  end
  
  def calculate_compoundedly
    compoud_interest = @p * ((1 + @r) ** @t - 1)
  end

  def compute_difference
    "Difference between compound and simple interest for rate 10% p.a. = Rs.#{ @block.call(calculate_simply, calculate_compoundedly) }"
  end
end