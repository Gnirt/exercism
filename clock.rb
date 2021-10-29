# frozen_string_literal: true

# Tic toc...
class Clock

  def initialize(hour: 0, minute: 0)
    @hour = hour
    @minute = minute
  end

  def to_s
    time_transformation
  end

  def minute_transformation
    modulo = @minute % 60
    modulo.to_s.rjust(2, '0')
  end

  def minute_to_hour
    @minute / 60
  end

  def hour_transformation
    hour_with_minute = @hour + minute_to_hour
    modulo = hour_with_minute % 24

    modulo.to_s.rjust(2, '0')
  end

  def time_transformation
    result = "#{hour_transformation}:#{minute_transformation}"
    if result == '24:00'
      '00:00'
    else
      result
    end
  end
end
