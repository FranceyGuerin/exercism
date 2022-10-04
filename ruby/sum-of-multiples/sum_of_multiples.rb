=begin
Write your code for the 'Sum Of Multiples' exercise in this file. Make the tests in
`sum_of_multiples_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/sum-of-multiples` directory.
=end

class SumOfMultiples

    def initialize(*factors)
        @factors = factors
        @multiples = []
    end

    def to(multiples_up_to)
        sanitise_multiple_ceiling(multiples_up_to)

        @factors.each { |factor| calculate_multiples(factor) }

        @multiples.uniq.sum
    end

    def sanitise_multiple_ceiling(multiples_up_to)
        @multiple_ceiling = multiples_up_to.to_i - 1
    end

    def calculate_multiples(factor)
        return 0 if factor <= 0

        multipliers = [*0..@multiple_ceiling / factor]

        multipliers.each { |multiplier| @multiples << factor * multiplier }
    end
end