class Employee
  attr_reader :designation, :emp_id, :name

  def initialize(name, emp_id, designation)
    @name = name.chomp
    @emp_id = emp_id.chomp
    @designation = designation.chomp
  end
end