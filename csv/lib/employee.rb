class Employee
  attr_reader :designation

  def initialize(name, emp_id, designation)
    @name = name.chomp
    @emp_id = emp_id.chomp
    @designation = designation.chomp
  end

  def self.all(from_file, headers)
    employees_data = File.readlines(from_file)
    employees_data.shift if headers == true
    employees_data.map { |record| Employee.new(*record.split(', ')) }
  end

  def to_s
    "#{ @name } (EmpId:#{ @emp_id })"
  end

end