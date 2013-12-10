require_relative '../lib/file_helper'
require_relative '../lib/employee'

file_helper = FileHelper.new
employee_record = Employee.all(File.absolute_path('../data/employee.csv', File.dirname($0)))
employee_record.shift
employee_record = employee_record.group_by { |employee| employee.designation }

file_helper.write_employee_record('employee_data.txt', employee_record.sort)