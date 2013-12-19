require_relative 'string'

class FileHelper

  def self.write_employee_records(to_file, records)
    File.open(to_file, 'w') do |file|
      records.each do |designation, employees|
        count = employees.length
        file.puts designation.pluralize(count)
        file.puts employees
        file.puts "\n"
      end
    end
  end

end