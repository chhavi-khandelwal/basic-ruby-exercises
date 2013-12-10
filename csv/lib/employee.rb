class Employee
  attr_reader :designation, :emp_id, :name
  @@employees = []

  def initialize(name, emp_id, designation)
    @name = name.chomp
    @emp_id = emp_id.chomp
    @designation = designation.chomp
  end

  def self.all(from_file)
    File.readlines(from_file).each do |record|
      @@employees << Employee.new(*record.split(', '))
    end
    @@employees
  end

  def to_s
    "#{ name } (EmpId:#{ emp_id })"
  end

end