require 'minitest/autorun'
require_relative 'count'

class CountTest < Minitest::Test
  def test_with_zero_items
    assert_equal 0, Count.call([])
  end

  def test_with_one_item
    assert_equal 1, Count.call(['a'])
  end

  def test_with_four_items
    assert_equal 4, Count.call(['a', 'b', 'c', 'd'])
  end
end
