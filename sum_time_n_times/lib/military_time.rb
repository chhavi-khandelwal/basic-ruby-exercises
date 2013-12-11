require 'time'
require_relative 'invalid_time_exception'

class MilitaryTime
  FORMAT = /^(?<hours>[01]?\d|2[0-3]):(?<mins>[0-5]?\d):(?<secs>[0-5]?\d)$/
  attr_reader :time

  def initialize(time)
    raise InvalidTimeException, 'Invalid time' if !valid?(time)
    @time = time
  end

  def self.sum(n_times)
    n_times = n_times.collect { |time| Time.parse(time.time) }
    sum_time = n_times.inject { |time1, time| time1 + time.hour * 3600 + time.min * 60 + time.sec }
    day = sum_time.day - n_times[0].day
    [sum_time, day]
  end

  def to_s
    time
  end

  private
  def valid?(time)
    time.match(FORMAT)
  end
  
end