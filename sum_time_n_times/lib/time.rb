class Time
  def add_to(*time_n)
    total_time = self
    i = 0
    while (i < time_n.length) do
      time2_in_secs = time_n[i].hour * 3600 + time_n[i].min * 60 + time_n[i].sec
      i += 1
      total_time += time2_in_secs
    end
    day = total_time.day - self.day
    "Sum: #{ day == 0 ? '' : "#{ day } day & " }#{ total_time.hour }:#{ total_time.min }:#{ total_time.sec }"
  end
end