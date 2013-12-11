require 'time'

class MilitaryTime
  FORMAT = /^(?<hours>[01]?\d|2[0-3]):(?<mins>[0-5]?\d):(?<secs>[0-5]?\d)$/
  @@time = []

  def initialize(time)
    @@time << Time.parse(time)
  end

  def self.all
    @@time
  end

  def self.sum
    net_time = @@time.inject { |time1, time| time1 + time.hour * 3600 + time.min * 60 + time.sec }
    day = net_time.day - @@time[0].day
    [net_time, day]
  end

  def self.valid?(time)
    time.match(FORMAT)
  end
end