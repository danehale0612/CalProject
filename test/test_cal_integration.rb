require 'test/unit'
require 'rubyCalYear'


class CalProjectTest < Test::Unit::TestCase

    def test_0_leap_year
        assert_equal(`cal 2 2004`, `ruby lib/rubyCal.rb 2 2004`)
    end

    def test_1a_non_leap_year
        assert_equal(`cal 2 2013`, `ruby lib/rubyCal.rb 2 2013`)
    end

    def test_1b_a_six_week_month
        assert_equal(`cal 12 2012`, `ruby lib/rubyCal.rb 12 2012`)
    end

    def test_1c_a_century_leap_year
        assert_equal(`cal 5 2000`, `ruby lib/rubyCal.rb 5 2000`)
    end

    def test_1d_a_century_non_leap_year
        assert_equal(`cal 5 2100`, `ruby lib/rubyCal.rb 5 2100`)
    end

    def test_1e_a_non_century_non_leap_year
        assert_equal(`cal 12 2003`, `ruby lib/rubyCal.rb 12 2100`)
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
        calendar = Month.new(1, 2012)
        assert_equal(31, calendar.days_in_a_month)
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
        calendar = Month.new(7, 2012)
        assert_equal(1, calendar.month_day_of_week)
    end

    def test_13_first_day_of_february_in_a_leap_year
        calendar = Month.new(2, 2014)
        assert_equal(7, calendar.month_day_of_week)
    end

    def test_14_first_day_of_January
        calendar = Month.new(1, 2015)
        assert_equal(5, calendar.month_day_of_week)
    end

    def test_15_print_month_header
        calendar = Month.new(8, 2013)
        assert_equal("    August 2013", calendar.header)
    end

    def test_16_print_days_of_the_week_with_month_header
        calendar = Month.new(8, 2013)
        assert_equal("    August 2013\nSu Mo Tu We Th Fr Sa\n", calendar.days_of_the_week)
    end

    def test_17_format_days_of_month
        calendar = Month.new(2, 2012)
        assert_equal("          1  2  3  4\n 5  6  7  8  9 10 11\n12 13 14 15 16 17 18\n19 20 21 22 23 24 25\n26 27 28 29\n\n", calendar.format_days_of_month)
    end

    def test_18_print_cal
        calendar = Month.new(2, 2012)
        assert_equal("   February 2012\nSu Mo Tu We Th Fr Sa\n          1  2  3  4\n 5  6  7  8  9 10 11\n12 13 14 15 16 17 18\n19 20 21 22 23 24 25\n26 27 28 29\n\n", calendar.print_month_calendar)
    end


end



 