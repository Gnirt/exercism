require 'minitest/autorun'
require_relative 'max'

class MaxTest < Minitest::Test
  def test_with_empty_array
    assert_nil Max.call([])
  end

  def test_with_one_value
    assert_equal 3, Max.call([3])
  end

  def test_with_two_values
    assert_equal 3, Max.call([3, 2])
  end

  def test_with_three_values
    assert_equal 10, Max.call([7, 4, 10])
  end

  def test_with_duplicate_values
    assert_equal 6, Max.call([6, 6, 5, 6])
  end
end
