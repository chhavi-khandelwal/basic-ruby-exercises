require_relative 'employee'

class FileHelper

  def write_employee_record(to_file, employee_record)
    File.open(to_file, 'w') do |employee_file|
      employee_record.each do |designation, employees|
        if employees.length > 1
          employee_file.puts "\n#{ designation + 's' }:"
        else
          employee_file.puts "\n#{ designation }:"
        end
        employee_file.puts employees
      end
    end
  end

end