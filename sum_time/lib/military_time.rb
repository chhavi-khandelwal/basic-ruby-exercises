class MilitaryTime
  TIME_FORMAT = /^(?<hours>[01]?\d|2[0-3]):(?<mins>[0-5]?\d):(?<secs>[0-5]?\d)$/

  def add_time(time1, time2)
    time2_in_secs = time2.hour * 3600 + time2.min * 60 + time2.sec
    time = time1 + time2_in_secs
    day = time.day - time1.day
    [day, time]
  end

  def self.valid?(time)
    time.match(TIME_FORMAT)
  end
end