# frozen_string_literal: true

# Tic toc...
class Clock
  attr_reader :minute, :hour

  def initialize(hour: 0, minute: 0)
    @hour = hour_transformation(hour, minute)
    @minute = minute_transformation(minute)
  end

  def to_s
    result = "#{to_two_digit(hour)}:#{to_two_digit(minute)}"
    return '00:00' if result == '24:00'

    result
  end

  def minute_transformation(number)
    number % 60
  end

  def minute_to_hour(number)
    number / 60
  end

  def hour_transformation(number, minute)
    hour_with_minute = number + minute_to_hour(minute)
    hour_with_minute % 24
  end

  def to_two_digit(number)
    number.to_s.rjust(2, '0')
  end

  def +(other)
    total_minute = minute + other.minute
    total_hour = hour + other.hour
    Clock.new(hour: total_hour, minute: total_minute)
  end

  def -(other)
    total_minute = minute - other.minute
    total_hour = hour - other.hour
    Clock.new(hour: total_hour, minute: total_minute)
  end

  def ==(other)
    hour == other.hour &&
      minute == other.minute
  end
end
