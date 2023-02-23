=begin
Write your code for the 'Raindrops' exercise in this file. Make the tests in
`raindrops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/raindrops` directory.
=end

class Raindrops
  def self.convert(digits)
    result = ''
    result += 'Pling' if (digits % 3).zero?
    result += 'Plang' if (digits % 5).zero?
    result += 'Plong' if (digits % 7).zero?
    result == '' ? digits.to_s : result
  end
end
