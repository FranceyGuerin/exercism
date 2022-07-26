=begin
Write your code for the 'Meetup' exercise in this file. Make the tests in
`meetup_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/meetup` directory.
=end
require 'Date'
require 'Time'

class Meetup
    def initialize(month, year)
        @month = month
        @year = year
    end

    def day(day_of_week, modifier)

        days = { sunday: 0, monday: 1, tuesday: 2, wednesday: 3, thursday: 4, friday: 5, saturday: 6 }

        days_in_month = Date.new(@year, @month, -1).day
        modifiers = {
            first: 1..7, 
            second: 8..14,
            third:  15..21,
            fourth: 22..28,
            teenth: 13..19,
            last: (days_in_month - 6)..days_in_month
        }

        if modifiers.include?(modifier)
            mod = modifiers[modifier]
        else
            raise ArgumentError.new("Invalid modifier: #{modifier}")
        end

        if days.include?(day_of_week)
            target_day = days[day_of_week]
        else   
            raise ArgumentError.new("Invalid day of week: #{day_of_week}")
        end

        mod.each do |day|
            date = Date.new(@year, @month, day)
            if target_day == date.wday
                return date
            end
        end
        raise StandardError.new("Unable to find matching date for given day of week and modifier combination: #{day_of_week} #{modifier}")
    end
end