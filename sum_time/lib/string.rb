class String
  def valid?
    match(/(?<hours>[01]\d|2[0-3]):(?<mins>[0-5]\d):(?<secs>[0-5]\d)/) ? true : (
      puts 'Enter a valid time'
      false
    )
  end

  def get_valid_time
    time = ''
    begin
      time = gets.chomp
    end while not time.valid?
    time
  end
end