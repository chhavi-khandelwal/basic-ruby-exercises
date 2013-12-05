class Time
  def add_to(time2)
    time2_in_secs = time2.hour * 3600 + time2.min * 60 + time2.sec
    time = self + time2_in_secs
    day = time.day - self.day
    puts "(#{ self.hour }:#{ self.min }:#{ self.sec },#{ time2.hour }:#{ time2.min }:#{ time2.sec }) -> #{ day == 0 ? '' : "#{ day } day &" } #{ time.hour }:#{ time.min }:#{ time.sec }"
  end
end