require 'minitest/autorun'
require_relative 'binary_search'

class BinarySearchTest < Minitest::Test

  def test_one_value
    sorted_array = [2]
    assert_equal 2, BinarySearch.new(sorted_array).call(2)
  end

  def test_two_values
    sorted_array = [1, 2]
    assert_equal 2, BinarySearch.new(sorted_array).call(2)
  end

  def test_five_values
    sorted_array = [1, 2, 3, 4 , 7]
    assert_equal 2, BinarySearch.new(sorted_array).call(2)
  end
end
