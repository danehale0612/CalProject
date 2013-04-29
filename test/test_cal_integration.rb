require 'test/unit'
require 'rubyCalYear'

class CalProjectTest < Test::Unit::TestCase

    def test_1_output_cal
        assert_equal(`cal 2 2013`, `ruby lib/rubyCal.rb 2 2013`)
    end

    def test_2_is_this_a_leap_year?
        year = Year.new(2100)
        assert_equal(false, year.leapYear?)
    end


end



 