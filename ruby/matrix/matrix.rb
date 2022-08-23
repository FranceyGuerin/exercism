=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end

class Matrix
    def initialize(input)
    rows = input.split(/\n/)
    matrix = rows.map { |row| row.split(" ") }
    @matrix = matrix.map { |row| row.map { |item| item.to_i } }
    end

    def rows
        @matrix
    end

    def columns
        @matrix.transpose
    end
end