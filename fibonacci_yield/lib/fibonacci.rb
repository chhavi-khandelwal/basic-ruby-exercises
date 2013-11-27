class Fibonacci
  def fibonacci_series(max_val)
    current_val, next_val = 0, 1 
    while current_val <= max_val
      yield current_val
      current_val, next_val = next_val, current_val + next_val
    end
  end
end