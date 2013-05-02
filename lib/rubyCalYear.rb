
class Month

    attr_accessor :month 
    attr_accessor :year

    def initialize(month, year)
        @month = month.to_i
        @year = year.to_i
    end

    def leap_year?
        if @year % 100 == 0 && @year % 400 == 0
             true
        elsif @year % 4 == 0 && @year % 100 != 0
           true
       else
            false
        end
    end

    def string_month
        monthToString = {1 => "January", 2 => "February", 3 => "March", 4 => "April", 5 => "May", 6 => "June", 7 => "July", 8 => "August", 9 => "September", 10 => "October", 11 => "November", 12 => "December"}
        monthToString[@month]
    end

    def days_in_a_month
        numOfDays = {1 => 31, 2 => 28, 3 => 31, 5 => 31, 7 => 31, 9 => 30, 11 => 30, 4 => 30, 6 => 30, 8 => 31, 10 => 31, 12 => 31}
        numOfDays = {2 => 29} if @month.to_i == 2 && leap_year?
        numOfDays[@month].to_i
    end

    def month_day_of_week
        zel_month = @month
        zel_year = @year
        if zel_month == 2 
            zel_month = 14 
            zel_year = @year - 1
        elsif zel_month == 1
            zel_month = 13
            zel_year = @year - 1
        end
        dayOfTheWeek = (1 + ((zel_month +1)*26)/10 + zel_year + (zel_year/4)+ 6*(zel_year/100) + (zel_year/400)) % 7
        dayOfTheWeek = 7 if dayOfTheWeek == 0
        dayOfTheWeek
    end

    def header 
        "#{string_month} #{@year}".center(20).rstrip
    end

    def days_of_the_week
        "#{header}\nSu Mo Tu We Th Fr Sa\n"
    end

    def format_days_of_month
        beginWhiteSpace = []
        i = 1
        until i == month_day_of_week
            beginWhiteSpace << "   "
            i += 1
        end
        days_array = beginWhiteSpace
        allDays = (1..days_in_a_month).to_a
        allDays.collect! do |days|
            if days < 10 && days != 1
                "  " + days.to_s
            else
             " " + days.to_s
            end
        end
        days_array += allDays
        calendar = []
        z = 0
        while z < 6
            newdays = days_array.shift(7)
            newdays = newdays.join
            newdays.slice!(0) unless z == 0
           calendar <<  newdays
           calendar << "\n"
           z += 1
       end
       calendar = calendar.join
   end

    def print_month_calendar
       "#{days_of_the_week}#{format_days_of_month}"
    end

end