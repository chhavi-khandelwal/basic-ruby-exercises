class Array
  def group_by_length
    length_groups = Hash.new { |hash, key| hash[key] = Array.new }
    for element in self
      element_size = element.to_s.size
      length_groups[element_size].push(element)
    end
    length_groups
  end
end