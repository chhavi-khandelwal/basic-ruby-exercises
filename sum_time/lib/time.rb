class Time
  def add_to(time2)
    time2_in_secs = time2.hour * 3600 + time2.min * 60 + time2.sec
    time = self + time2_in_secs
    days = time.day - self.day
    puts "days:#{ days } hour:#{ time.hour } min:#{ time.min } sec:#{ time.sec } "
  end
end