class Year

    attr_accessor = :year

    def initialize(year)
        @year = year
    end

    def leapYear?
        if @year % 100 == 0 && @year % 400 == 0
             return true
        elsif @year % 4 == 0 && @year % 100 != 0
           return true
       else
            return false
        end
    end
end
