=begin
Write your code for the 'Isogram' exercise in this file. Make the tests in
`isogram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/isogram` directory.
=end
class Isogram

  def self.isogram?(input)
    witness = Hash.new(0)
    input.gsub(/\W/, '').downcase.chars.each do |char|
      witness[char] += 1
      return false if witness[char] > 1
    end
    true
  end
end
