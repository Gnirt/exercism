=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.

To get started with TDD, see the `README.md` file in your
ruby/series` directory.
=end

class Series
  
  def initialize(digits)
    @digits = digits
  end

  def slices(length)
    raise ArgumentError if length.zero? || (@digits.length/length) <= 0
    @digits.split('').map.with_index do |digit, index|
      end_range = index+length
      next if end_range > @digits.length
      @digits[index...end_range]
    end.compact
  end
end
