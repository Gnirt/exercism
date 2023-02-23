=begin
Write your code for the 'Space Age' exercise in this file. Make the tests in
`space_age_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/space-age` directory.
=end
class SpaceAge
  PLANETS_REF = {
    mercury: 0.2408467,
    venus: 0.61519726,
    earth: 1.0,
    mars: 1.8808158,
    jupiter: 11.862615,
    saturn: 29.447498,
    uranus: 84.016846,
    neptune: 164.79132
  }

  def initialize(age_in_seconds)
    @earth_seconds = age_in_seconds
  end

  PLANETS_REF.keys.each do |planet_name|
    define_method "on_#{planet_name}" do
      (@earth_seconds / (31557600.to_f * PLANETS_REF[planet_name])).round(2)
    end
  end
end
