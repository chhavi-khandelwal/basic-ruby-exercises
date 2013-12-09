require_relative 'name_not_capitalized_exception'
require_relative 'name_not_null_exception'

class Name

  def initialize(firstname, secondname)
    @firstname = validate_and_return(firstname, 'Firstname')
    @secondname = validate_and_return(secondname, 'Secondname')
  end

  def validate_and_return(name, type)
    raise NameNotNullException, "#{ type } must not be null" if name.nil? || name.size == 0
    raise NameNotCapitalizedException, 'First letter of the name must be capital' if name[0].capitalize != name[0] && type == 'Firstname'
    name
  end

  def full_name
    "Name: #{ @firstname } #{ @secondname }"
  end

  private :validate_and_return
end