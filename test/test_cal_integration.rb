require 'test/unit'
require 'rubyCalYear'

class CalProjectTest < Test::Unit::TestCase

    def test_1_output_cal
        assert_equal(`cal 2 2013`, `ruby lib/rubyCal.rb 2 2013`)
    end

    def test_2_its_a_century_leap_year
        year = Month.new(5, 2000)
        assert_equal(true, year.leap_year?)
    end

    def test_3_its_not_a_century_leap_year
        year = Month.new(5, 2100)
        assert_equal(false, year.leap_year?)
    end

    def test_4_its_a_non_century_leap_year
        year = Month.new(5, 1996)
        assert_equal(true, year.leap_year?)
    end

    def test_5_its_not_a_non_century_leap_year
        year = Month.new(5, 1998)
        assert_equal(false, year.leap_year?)
    end

    def test_6_number_month
        month = Month.new(6, 2013)
        assert_equal("June", month.string_month)
    end

    def test_7_num_of_days_in_month
        calendar = Month.new(1, 2012)
        assert_equal(31, calendar.days_in_a_month)
    end

    def test_8_num_of_days_in_month
        calendar = Month.new(4, 2012)
        assert_equal(30, calendar.days_in_a_month)
    end

    def test_9_num_of_days_in_february_in_a_leap_year
        calendar = Month.new(2, 2012)
        assert_equal(29, calendar.days_in_a_month)
    end

    def test_10_num_of_days_in_february_not_in_a_leap_year
        calendar = Month.new(2, 2011)
        assert_equal(28, calendar.days_in_a_month)
    end

    def test_12_first_day_of_month
        calendar = Month.new(6, 1983)
        assert_equal(4, calendar.month_day_of_week)
    end

    def test_13_first_day_of_february_in_a_leap_year
        calendar = Month.new(2, 2014)
        assert_equal(0, calendar.month_day_of_week)
    end

    def test_14_first_day_of_January
        calendar = Month.new(1, 2015)
        assert_equal(5, calendar.month_day_of_week)
    end


end



 