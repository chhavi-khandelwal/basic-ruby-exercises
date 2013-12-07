class Array
  def reverse_iterate
    array = self.reverse
    for i in 0..array.size
      yield array[i]
    end
  end
end