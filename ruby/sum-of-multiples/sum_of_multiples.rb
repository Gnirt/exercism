=begin
Write your code for the 'Sum Of Multiples' exercise in this file. Make the tests in
`sum_of_multiples_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/sum-of-multiples` directory.
=end
class SumOfMultiples

  def initialize(*multiples)
    @multiples = multiples.uniq
  end

  def to(max)
    (0...max).select do |number|
      @multiples.detect do |multiple|
        next if multiple == 0
        number % multiple == 0
      end
    end.sum
  end
end
