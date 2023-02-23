=begin
Write your code for the 'Transpose' exercise in this file. Make the tests in
`transpose_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/transpose` directory.
=end

class Transpose
  def self.transpose(input)
    rows = input.gsub(' ', '~').split("\n")
    rows.map do |row|
      row.chars.fill(' ', row.length...rows.max_by(&:length).length)
    end.transpose.map{|char| char.join.rstrip.gsub('~', ' ')}.join("\n")
  end
end

