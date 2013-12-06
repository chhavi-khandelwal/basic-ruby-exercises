class Name

  def initialize(firstname, secondname)
    @firstname = firstname
    @secondname = secondname
  end

  def validate_and_return(name, set)
    raise NameNotNullException, "#{ set } must not be null" if name.nil? || name.size == 0
    raise NameNotCapitalizedException, 'First letter of the name must be capital' if name.capitalize != name && set == 'Firstname'
    name
  end

  def full_name
    firstname = validate_and_return(@firstname, 'Firstname')
    secondname = validate_and_return(@secondname, 'Secondname')
    "Name: #{ firstname } #{ secondname }"
  end

end