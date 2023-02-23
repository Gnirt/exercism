=begin
Write your code for the 'Hamming' exercise in this file. Make the tests in
`hamming_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/hamming` directory.
=end

class Hamming

  def self.compute(dna_one, dna_two)
    raise ArgumentError if dna_one.length != dna_two.length

    hamming = 0
    dna_one.chars.each_with_index do |char, index|
      hamming += 1 if char != dna_two[index]
    end
    hamming
  end
end
