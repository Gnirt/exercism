# frozen_string_literal: true

class Clock

  def initialize(hour: nil, minute: nil)
    @hour = hour
    @minute = minute
  end

  # use '3'.rjust(2, '0')
  # use '%.2d' % '3'
  def to_s
    result = "#{hour_transformation(@hour)}:#{minute_transformation(@minute)}"

    time_transformation(result)
  end

  def minute_transformation(number)
    if number.to_s.length == 1
      "0#{number}"
    elsif number.to_s.length == 0
      '00'
    else
      number
    end
  end

  def hour_transformation(number)
    if number.to_s.length == 1
      "0#{number}"
    elsif number.to_s.length == 0
      '00'
    else
      number
    end
  end

  def time_transformation(result)
    if result == '24:00'
      '00:00'
    else
      result
    end
  end
end
