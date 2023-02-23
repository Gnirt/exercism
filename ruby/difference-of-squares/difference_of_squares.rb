=begin
Write your code for the 'Difference Of Squares' exercise in this file. Make the tests in
`difference_of_squares_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/difference-of-squares` directory.
=end
class Squares

  def initialize(number)
    @n = number
  end

  def square_of_sum
    (0..@n).sum ** 2
  end

  def sum_of_squares
    (0..@n).map{|n| n ** 2}.sum
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
