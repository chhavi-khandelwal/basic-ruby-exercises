require_relative 'employee'

class FileHelper

  def read_employee_record
    employee = []
    File.readlines('../data/employee.csv').each do |record|
      name, emp_id, designation = record.split(', ')
      employee << Employee.new(name, emp_id, designation)
    end
    employee
  end

  def write_employee_record
    File.open('employee_data.txt', 'w') do |employee_file|
      employee_record = store_employee_record
      employee_record.each do |key, value|
        employee_file.puts "\n#{ key }:"
        value.each { |x| employee_file.puts x }
      end
    end
  end

  def store_employee_record
    employee_record = Hash.new { |hash, key| hash[key] = [] }
    read_employee_record.each do |employee|
      employee_record[employee.designation + 's'] << "#{ employee.name }(EmpId:#{ employee.emp_id })"
    end
    employee_record
  end

end