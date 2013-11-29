class Array
  def group_by_length
    length_hash = Hash.new { |hash, key| hash[key] = Array.new }
    for element in self
      length_hash_key = element.to_s.size
      length_hash[length_hash_key].push(element)
    end
      length_hash
  end  

  def group_by_even_and_odd_lengths
    group_by_length.inject(Hash.new { |hash, key| hash[key] = Array.new }) do |even_odd_hash, (key, value)|
      even_odd_hash[key.odd? ? 'odd' : 'even'].push(value)
      even_odd_hash
    end
  end
end