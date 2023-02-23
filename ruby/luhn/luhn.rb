=begin
Write your code for the 'Luhn' exercise in this file. Make the tests in
`luhn_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/luhn` directory.
=end

class Luhn
  def self.valid?(number)
    number.delete!(' ')
    return false if number.length < 2 || number =~ /\D/
    count = 0
    number.chars.reverse.each_with_index do |digit, index|
      if index % 2 != 0
        digit = digit.to_i * 2
        digit = digit - 9 if digit > 9
      end
      count += digit.to_i
    end
    count % 10 == 0
  end
end
