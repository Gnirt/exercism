=begin
Write your code for the 'Pythagorean Triplet' exercise in this file. Make the tests in
`pythagorean_triplet_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/pythagorean-triplet` directory.
=end

class Triplet
  attr_reader :a, :b, :c
  def initialize(a, b, c)
    @a, @b, @c = a, b, c
  end

  def product
    a * b * c
  end

  def sum
    a + b + c
  end

  def pythagorean?
    a ** 2 + b ** 2 == c ** 2
  end

  def self.where(max_factor:, min_factor: 1, sum: nil)
    (min_factor..max_factor).each_with_object([]) do |a, results|
      (a+1..max_factor).each do |b|
        (b+1..max_factor).each do |c|
          triplet = Triplet.new(a, b, c)
          results << triplet if triplet.pythagorean? && (!sum || sum == triplet.sum)
        end
      end
    end
  end
end
