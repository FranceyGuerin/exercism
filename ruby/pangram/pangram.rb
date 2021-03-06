=begin
Write your code for the 'Pangram' exercise in this file. Make the tests in
`pangram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/pangram` directory.
=end

class Pangram
    def self.pangram?(sentence)
        alphabet = Hash[('a' .. 'z').map {|c| [c, false]}]
        sentence.downcase.chars.map {|c| alphabet[c] = true }
        alphabet.values.all?
    end
end