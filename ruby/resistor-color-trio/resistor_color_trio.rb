=begin
Write your code for the 'Resistor Color Trio' exercise in this file. Make the tests in
`resistor_color_trio_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-trio` directory.
=end
class ResistorColorTrio
  COLORS_REF = {
    black: 0,
    brown: 1,
    red: 2,
    orange: 3,
    yellow: 4,
    green: 5,
    blue: 6,
    violet: 7,
    grey: 8,
    white: 9
  }

  def initialize(colors_arr)
    raise ArgumentError if colors_arr.length != 3
    raise ArgumentError unless (colors_arr.map(&:to_sym)-COLORS_REF.keys) == []

    @colors_arr = colors_arr
  end

  def label
    one, two, three = @colors_arr.map{|color| COLORS_REF[color.to_sym]}
    as_string = "#{one}#{two}#{'0' * three}"
    "Resistor value: #{to_label(as_string)}"
  end

  def to_label(number)
    if number.to_i > 1000
      "#{number.to_i / 1000} kiloohms"
    else
      "#{number} ohms"
    end
  end
end
