require 'test/unit'
require 'rubyCalYear'

class CalProjectTest < Test::Unit::TestCase

    def test_1_output_cal
        assert_equal(`cal 2 2013`, `ruby lib/rubyCal.rb 2 2013`)
    end

    def test_2_is_this_a_leap_year?
        year = Month.new(5, 2100)
        assert_equal(false, year.leap_year?)
    end

    def test_3_number_month
        month = Month.new(6, 2013)
        assert_equal("June", month.string_month)
    end

    def test_4_num_of_days_in_month
        calendar = Month.new(4, 2012)
        assert_equal(30, calendar.days_in_a_month)
    end


end



 