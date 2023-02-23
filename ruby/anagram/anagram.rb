=begin
Write your code for the 'Anagram' exercise in this file. Make the tests in
`anagram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/anagram` directory.
=end
class Anagram

  def initialize(reference_word)
    @ref_word = reference_word.downcase
    @ref_word_duplicate_letters = @ref_word.chars.select{ |e| @ref_word.count(e) > 1 }
  end

  def match(candidates)
    winners = []
    candidates.each do |word|
      word_chars = word.downcase.chars # Store downcased word characters in an array

      next if word.downcase == @ref_word # Can't be an anagram of itself "banana" vs "banana"
      next if word.length != @ref_word.length # Word is not the same length "banana" vs "bana"
      next if @ref_word.chars - word_chars != [] # should be empty
      next if word_chars - @ref_word.chars != [] # should also be empty
      if @ref_word_duplicate_letters # for duplicated characters to avoid o(n) when unecessary
        word_duplicate_letter = word_chars.select{ |e| word.count(e) > 1 }
        next if word_duplicate_letter != @ref_word_duplicate_letters
      end
      winners << word
    end
    return winners
  end
end
