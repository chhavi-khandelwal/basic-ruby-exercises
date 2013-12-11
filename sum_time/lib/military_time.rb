require 'time'
require_relative 'invalid_time_exception'

class MilitaryTime
  FORMAT = /^(?<hours>[01]?\d|2[0-3]):(?<mins>[0-5]?\d):(?<secs>[0-5]?\d)$/
  attr_reader :time

  def initialize(time)
    raise InvalidTimeException, 'Invalid time' if !valid?(time)
    @time = time
  end

  def self.add(time1, time2)
    time1 = Time.parse(time1.time)
    time2 = Time.parse(time2.time)
    time2_in_secs = time2.hour * 3600 + time2.min * 60 + time2.sec
    time = time1 + time2_in_secs
    day = time.day - time1.day
    [day, time]
  end
  
  def to_s
    time
  end

  private
  def valid?(time)
    time.match(FORMAT)
  end

end