require 'test/unit'


class CalProjectTest < Test::Unit::TestCase

    def test_1_output_cal
        assert_equal(`cal 2 2013`, `ruby rubyCal.rb 2 2013`)
    end

end