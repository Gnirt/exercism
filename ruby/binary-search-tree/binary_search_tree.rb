=begin
Write your code for the 'Binary Search Tree' exercise in this file. Make the tests in
`binary_search_tree_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/binary-search-tree` directory.
=end

class Node
  attr_accessor :data, :left, :right
  def initialize(data)
    @data = data
  end

  def insert(number)
    if number > data
      if right.nil?
        self.right = Node.new(number)
      else
        right.insert(number)
      end
    else
      if left.nil?
        self.left = Node.new(number)
      else
        left.insert(number)
      end
    end
  end

  def each(&block)
    return to_enum(&:each) if not block_given?

    left.each(&block) if left
    yield(data)
    right.each(&block) if right
  end
end

class Bst < Node
  def initialize(data)
    super
  end

end

