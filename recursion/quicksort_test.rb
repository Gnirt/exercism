require 'minitest/autorun'
require_relative 'quicksort'

class QuicksortTest < Minitest::Test
  
  def test_empty_array
      assert_equal [], Quicksort.call([])
  end

  def test_one_element_array
    assert_equal [1], Quicksort.call([1])
  end

  def test_two_elements_array
    assert_equal [1, 2], Quicksort.call([1, 2]) 
  end

  def test_9_elements
    assert_equal [1, 2, 3, 4, 5, 6, 7, 8, 9], Quicksort.call([7, 4, 6, 3, 1, 2, 5, 8, 9])
  end

  def test_duplicate_elements
    assert_equal [1, 1, 2, 3, 4, 4], Quicksort.call([2, 4, 3, 4, 1, 1])
  end
end
