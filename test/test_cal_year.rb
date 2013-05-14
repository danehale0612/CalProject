require 'test/unit'
require 'rubyCalYear'

class CalProjectTest < Test::Unit::TestCase

    def test_1_print_year_header
        year = Year.new(1983)
        assert_equal("                             1983\n\n", year.year_header)
    end

    # def test_2_month_names
    #     year = Year.new(1983)
    #     assert_equal("      January               February               March\n", year.print_month_names)
    # end

    # def test_3_print_year_month_header
    #     year = Year.new(1983)
    #     assert_equal("                             1983\n\n      January               February               March\nSu Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa\n",year.print_year_month_header)
    # end

    # def test_4_gather_first_week
    #     year = Year.new(1983)
    #     assert_equal("                   1         1  2  3  4  5         1  2  3  4  5\n 2  3  4  5  6  7  8   6  7  8  9 10 11 12   6  7  8  9 10 11 12\n 9 10 11 12 13 14 15  13 14 15 16 17 18 19  13 14 15 16 17 18 19\n16 17 18 19 20 21 22  20 21 22 23 24 25 26  20 21 22 23 24 25 26\n23 24 25 26 27 28 29  27 28                 27 28 29 30 31\n30 31                                       \n", year.print_weeks)
    # end

    def test_5_print_months
        year = Year.new(1983)
        assert_equal("                             1983\n\n      January               February               March\nSu Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa\n                   1         1  2  3  4  5         1  2  3  4  5\n 2  3  4  5  6  7  8   6  7  8  9 10 11 12   6  7  8  9 10 11 12\n 9 10 11 12 13 14 15  13 14 15 16 17 18 19  13 14 15 16 17 18 19\n16 17 18 19 20 21 22  20 21 22 23 24 25 26  20 21 22 23 24 25 26\n23 24 25 26 27 28 29  27 28                 27 28 29 30 31\n30 31                                       \n       April                  May                   June\nSu Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa\n                1  2   1  2  3  4  5  6  7            1  2  3  4\n 3  4  5  6  7  8  9   8  9 10 11 12 13 14   5  6  7  8  9 10 11\n10 11 12 13 14 15 16  15 16 17 18 19 20 21  12 13 14 15 16 17 18\n17 18 19 20 21 22 23  22 23 24 25 26 27 28  19 20 21 22 23 24 25\n24 25 26 27 28 29 30  29 30 31              26 27 28 29 30\n                                            \n        July                 August              September\nSu Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa\n                1  2      1  2  3  4  5  6               1  2  3\n 3  4  5  6  7  8  9   7  8  9 10 11 12 13   4  5  6  7  8  9 10\n10 11 12 13 14 15 16  14 15 16 17 18 19 20  11 12 13 14 15 16 17\n17 18 19 20 21 22 23  21 22 23 24 25 26 27  18 19 20 21 22 23 24\n24 25 26 27 28 29 30  28 29 30 31           25 26 27 28 29 30\n31                                          \n      October               November              December\nSu Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa\n                   1         1  2  3  4  5               1  2  3\n 2  3  4  5  6  7  8   6  7  8  9 10 11 12   4  5  6  7  8  9 10\n 9 10 11 12 13 14 15  13 14 15 16 17 18 19  11 12 13 14 15 16 17\n16 17 18 19 20 21 22  20 21 22 23 24 25 26  18 19 20 21 22 23 24\n23 24 25 26 27 28 29  27 28 29 30           25 26 27 28 29 30 31\n30 31                                       \n", year.print_everything)
    end

end
