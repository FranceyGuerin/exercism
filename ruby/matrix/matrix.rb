=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end


class Matrix

    def initialize(input)
        
        matrix = input.split("\n")
        matrix = matrix.map do |x|
            x.split(" ")
        end

        matrix = matrix.map do |c|
           c.to_i
        end

        matrix.each{|row| row.replace(row.map{random_letter})}


        @matrix = matrix
    end

    def rows()
        return @matrix.rows
    end
end