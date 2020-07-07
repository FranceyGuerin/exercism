=begin
Write your code for the 'Microwave' exercise in this file. Make the tests in
`microwave_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/microwave` directory.
=end

class Microwave

    def initialize(input)
        @input = input
    end

    def timer
        if @input.to_s.length > 2
            m = @input.to_s.chars[..-3].join.to_s
            s = @input.to_s.chars[-2..].join.to_s
            format("%02d", m) + ":" + (format("%02d", s)) 
        else
            format("%02d", @input/60.floor) + ":" + (format("%02d", @input%60)) 
        end
    end
end
