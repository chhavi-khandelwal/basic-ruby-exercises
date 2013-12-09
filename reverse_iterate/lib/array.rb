class Array
  def reverse_iterate
    for i in 1..self.size
      yield self[-i]
    end
  end
end