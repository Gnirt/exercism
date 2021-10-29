# frozen_string_literal: true

# Tic toc...
class Clock

  def initialize(hour: nil, minute: nil)
    @hour = hour
    @minute = minute
  end

  def to_s
    time_transformation
  end

  def minute_transformation
    @minute.to_s.rjust(2, '0')
  end

  def hour_transformation
    modulo = @hour % 24
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
