require 'minitest/autorun'
require_relative 'sum'

class SumTest < Minitest::Test
  def test_with_zero_item
    assert_equal nil, Sum.call([])
  end

  def test_with_one_item
    assert_equal 3, Sum.call([3])
  end

  def test_with_four_items
    assert_equal 9, Sum.call([2,3,4])
  end
end

