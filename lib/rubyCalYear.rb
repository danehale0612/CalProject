class Calendar
    attr_accessor = :year
    attr_accessor = :month

    def intialize
        @month = Month.month
        @year = Month.year
    end

    # def month_day_of_week
    #     dayOfTheWeek = (month.daysInAMonth + ((@month +1)26)/10 +  )
    # end

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
        numOfDays = {1 => 31, 3 => 31, 5 => 31, 7 => 31, 9 => 31, 11 => 31, 4 => 30, 6 => 30, 8 => 30, 10 => 30, 12 => 30}
        numOfDays[@month]
    end

    


end