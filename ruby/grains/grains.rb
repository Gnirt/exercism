=begin
Write your code for the 'Grains' exercise in this file. Make the tests in
`grains_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/grains` directory.
=end
class Grains
  def self.square(square_number)
    raise ArgumentError if square_number > 64 || square_number < 1
    
    (square_number - 1).times.inject(1) do |grains, _|
      grains = grains * 2
    end
  end

  def self.total
    18_446_744_073_709_551_615
  end
end
