# frozen_string_literal: true

# Tic toc...
class Clock

  def initialize(hour: nil, minute: nil)
    @hour = hour
    @minute = minute
  end

  # use '%.2d' % '3'
  def to_s
    result = "#{hour_transformation(@hour)}:#{minute_transformation(@minute)}"

    time_transformation(result)
  end

  def minute_transformation(number)
    number.to_s.rjust(2, '0')
  end

  def hour_transformation(number)
    number.to_s.rjust(2, '0')
  end

  def time_transformation(result)
    if result == '24:00'
      '00:00'
    else
      result
    end
  end
end
