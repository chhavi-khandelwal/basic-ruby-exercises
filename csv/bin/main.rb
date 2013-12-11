require_relative '../lib/file_helper'
require_relative '../lib/employee'

employee_records = Employee.all(File.absolute_path('../data/employee.csv', File.dirname(__FILE__)), headers = true)
FileHelper.write_employee_records('employee_data.txt', employee_records.group_by { |employee| employee.designation }.sort)