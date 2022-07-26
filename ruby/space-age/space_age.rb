=begin
Write your code for the 'Space Age' exercise in this file. Make the tests in
`space_age_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/space-age` directory.
=end

class SpaceAge


    def initialize(seconds)
        @seconds = seconds
        @earth_year = 31557600.0
        @mercury_year = @earth_year*0.2408467
        @venus_year = @earth_year*0.61519726
        @mars_year = @earth_year*1.8808158
        @jupiter_year = @earth_year*11.862615
        @saturn_year = @earth_year*29.447498
        @uranus_year = @earth_year*84.016846
        @neptune_year = @earth_year*164.79132
    end

    def on_earth
        @seconds/@earth_year
    end

    def on_mercury
        @seconds/@mercury_year
    end

    def on_venus
        @seconds/@venus_year
    end

    def on_mars
        @seconds/@mars_year
    end

    def on_jupiter
        @seconds/@jupiter_year
    end

    def on_saturn
        @seconds/@saturn_year
    end

    def on_uranus
        @seconds/@uranus_year
    end

    def on_neptune
        @seconds/@neptune_year
    end
end