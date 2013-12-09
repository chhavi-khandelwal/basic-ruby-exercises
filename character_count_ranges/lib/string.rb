class String
  def count_character_type
    character_type_collection = Hash.new(0)
    digits_range = '0'..'9'
    lowercase_range = 'a'..'z'
    uppercase_range = 'A'..'Z'
    self.each_char { |char| case char
      when digits_range
        character_type_collection['digits'] += 1
      when lowercase_range
        character_type_collection['lowercase'] += 1
      when uppercase_range
        character_type_collection['uppercase'] += 1
      else
        character_type_collection['special-characters'] += 1
     end
    }
    character_type_collection
  end
end