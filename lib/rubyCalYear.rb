class Calendar
    attr_accessor = :year
    attr_accessor = :month

    def intialize
        @month = Month.month
        @year = Month.yearn
    end

    

# Year.year 
end

class Month

    attr_accessor = :month 
    attr_accessor = :year


    def initialize(month, year)
        @month = month
        @year = year
    end

    def leap_year?
        if @year % 100 == 0 && @year % 400 == 0
             return true
        elsif @year % 4 == 0 && @year % 100 != 0
           return true
       else
            return false
        end
    end

    def string_month
        monthToString = {1 => "January", 2 => "February", 3 => "March", 4 => "April", 5 => "May", 6 => "June", 7 => "July", 8 => "August", 9 => "September", 10 => "October", 11 => "November", 12 => "December"}
        monthToString[@month]
    end

    def days_in_a_month
        numOfDays = {1 => 31, 2 => 28, 3 => 31, 5 => 31, 7 => 31, 9 => 31, 11 => 31, 4 => 30, 6 => 30, 8 => 30, 10 => 30, 12 => 30}
        if @month == 2 && self.leap_year?
            numOfDays = {2 => 29}
        end
        numOfDays[@month]
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
    end

    


end