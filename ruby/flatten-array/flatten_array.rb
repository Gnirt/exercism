=begin
Write your code for the 'Flatten Array' exercise in this file. Make the tests in
`flatten_array_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/flatten-array` directory.
=end
class FlattenArray
  def self.flatten(array, flat_array = [])
    array.each do |element|
      next if element.nil?
      element.is_a?(Array) ? flatten(element, flat_array) : flat_array << element
    end
    flat_array
  end
end
