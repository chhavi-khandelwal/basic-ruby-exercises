require 'time'
require_relative 'invalid_time_exception'

class MilitaryTime
  FORMAT = /^(?<hours>[01]?\d|2[0-3]):(?<mins>[0-5]?\d):(?<secs>[0-5]?\d)$/
  attr_reader :time

  def initialize(time)
    @time = time
    raise InvalidTimeException, 'Invalid time' if !valid?
  end

  def +(other_time)
    time1 = Time.parse(self.time)
    other_time = Time.parse(other_time.time)
    other_time_in_secs = other_time.hour * 3600 + other_time.min * 60 + other_time.sec
    time = time1 + other_time_in_secs
    day = time.day - time1.day
    [day, time]
  end
  
  def to_s
    time
  end

  private
    def valid?
      time.match(FORMAT)
    end

end