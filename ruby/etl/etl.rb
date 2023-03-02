=begin
Write your code for the 'ETL' exercise in this file. Make the tests in
`etl_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/etl` directory.
=end

class ETL

  def self.transform(old)
    old.flat_map do |key, value|
      value.map do |new_key|
        [new_key.downcase, key]
      end
    end.to_h
  end
end
