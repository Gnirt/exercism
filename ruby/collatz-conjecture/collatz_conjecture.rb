=begin
Write your code for the 'Collatz Conjecture' exercise in this file. Make the tests in
`collatz_conjecture_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/collatz-conjecture` directory.
=end

class CollatzConjecture

  def self.steps(number, steps = 0)
    raise ArgumentError unless number.positive?
    return steps if number == 1
    new_number = (number % 2).even? ? number / 2 : number * 3 + 1
    steps(new_number, steps + 1)
  end
end
