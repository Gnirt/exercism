=begin
Write your code for the 'Twelve Days' exercise in this file. Make the tests in
`twelve_days_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/twelve-days` directory.
=end

class TwelveDays
  DAYS = [
      "a Partridge in a Pear Tree.\n",
      "two Turtle Doves, and ",
      "three French Hens, ",
      "four Calling Birds, ",
      "five Gold Rings, ",
      "six Geese-a-Laying, ",
      "seven Swans-a-Swimming, ",
      "eight Maids-a-Milking, ",
      "nine Ladies Dancing, ",
      "ten Lords-a-Leaping, ",
      "eleven Pipers Piping, ",      
      "twelve Drummers Drumming, "
  ]

  def self.base(index)
    number = ["first", "second", "third", "fourth", "fifth", "sixth", "seventh",
      "eighth", "ninth", "tenth", "eleventh", "twelfth" ]
    "On the #{number[index]} day of Christmas my true love gave to me: "
  end

  def self.song
    result = []
    12.times do |i|
      result << base(i) + DAYS[0..i].reverse.join
    end
    result.join("\n")
  end
end
