=begin
Write your code for the 'Triangle' exercise in this file. Make the tests in
`triangle_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/triangle` directory.
=end

class Triangle

  def initialize(array)
    @a = array.first
    @b = array[1]
    @c = array[2]
  end

  def equilateral?
    return false unless triangle?
    
    @a == @b && @b == @c
  end

  def isosceles?
    return false unless triangle?

    @a == @b || @b == @c || @c == @a
  end

  def scalene?
    return false unless triangle?
    
    @a != @b && @b != @c && @c != @a
  end

  def triangle?
    (@a + @b) > @c &&
      (@b + @c) > @a &&
      (@a + @c) > @b
  end
end
