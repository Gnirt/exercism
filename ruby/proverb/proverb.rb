=begin
Write your code for the 'Proverb' exercise in this file. Make the tests in
`proverb_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/proverb` directory.
=end

class Proverb
  attr_reader :qualifier, :words

  def initialize(*words, qualifier: '')
    @words = words
    @qualifier = qualifier
  end

  def to_s
    words.each_cons(2).map { |pair| "For want of a #{pair.first} the #{pair.last} was lost." }
      .push("And all for the want of a #{qualified_last_word}.")
      .join("\n")
  end

  def qualified_last_word
    qualifier.empty? ? words.first : "#{qualifier} #{words.first}"
  end
end
