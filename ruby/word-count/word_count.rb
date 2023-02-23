=begin
Write your code for the 'Word Count' exercise in this file. Make the tests in
`word_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/word-count` directory.
=end
class Phrase
  def initialize(sentance)
    @sentance = sentance
  end

  def word_count
    words = @sentance.downcase.gsub(/[^0-9a-z']/, ' ').scan(/\w+(?:'\w+)*/)
    counts = Hash.new(0)
    words.each do |word|
      counts[word] += 1
    end
    counts
  end
end
