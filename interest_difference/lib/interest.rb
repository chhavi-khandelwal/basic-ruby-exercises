class Interest
  RATE = 0.1
  attr_reader :principal, :time, :block
  def initialize(principal, time, &block)
    @principal, @time, @block = principal.to_f, time.to_f, block
  end

  def get_simple_interest
    principal * RATE * time
  end
  
  def get_compound_interest
    principal * ((1 + RATE) ** time - 1)
  end

  def difference
    block.call(get_simple_interest, get_compound_interest)
  end
end