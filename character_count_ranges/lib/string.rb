class String
  def count_character_type
    character_type_collection = Hash.new(0)
    self.each_char { |char| case char
      when '0'..'9'
       character_type_collection['digits'] += 1
      when 'a'..'z'
        character_type_collection['lowercase'] += 1
      when 'A'..'Z'
        character_type_collection['uppercase'] += 1
      else
        character_type_collection['special-characters'] += 1
     end
    }
    character_type_collection
  end
end