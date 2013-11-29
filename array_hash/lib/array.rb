class Array
  def to_length_hash
    length_hash = Hash.new { |hash, key| hash[key] = Array.new }
    for element in self
      length_hash[element.to_s.size].push(element)
    end
    length_hash
  end
end