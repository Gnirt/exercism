=begin
Write your code for the 'Nucleotide Count' exercise in this file. Make the tests in
`nucleotide_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/nucleotide-count` directory.
=end

class Nucleotide
  def self.from_dna(string)
    histogram = {'A' => 0, 'C' => 0, 'G' => 0, 'T' => 0}

    dna_array = string.chars
    histogram.keys.each do |nucleotide|
      previous_length = dna_array.length
      dna_array = dna_array - [nucleotide]
      histogram[nucleotide] = previous_length - dna_array.length
    end
    raise ArgumentError unless dna_array.empty?
    Histogram.new(histogram)
  end
end

class Histogram
  attr_reader :histogram
  def initialize(dna)
    @histogram = dna
  end

  def count(nucleotide)
    histogram[nucleotide]
  end
end
