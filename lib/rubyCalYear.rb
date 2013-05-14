require_relative 'rubyCalMonth'

class Year

    attr_accessor :year

    def initialize(year)
        @year = year.to_i
    end

    def year_header
        year_header = "#{@year}".center(63).rstrip + "\n" + "\n"
        year_header
    end

    def gather_month_names
        month_names = []
        (1..12).each do |month|
            calendar = Month.new(month, @year)
            month_name_formated = calendar.string_month.center(20)
            month_names << month_name_formated
            end
        month_names
    end

    def print_month_names(a, b, c)
        months = gather_month_names
        print_names = []
        
        print_names << months[a]
        print_names << months[b]
        print_names << months[c]
          
        print_names = print_names.join("  ")
        print_names = print_names.rstrip
        print_names = print_names + "\n"

        print_names
    end

    def print_label_weekdays
        string_weekdays = "Su Mo Tu We Th Fr Sa"
        days_of_week = []
        j = 3
        j.times do
            days_of_week << string_weekdays
        end
        days_of_week = days_of_week.join("  ")
        days_of_week = days_of_week + "\n"
        days_of_week
    end

    def print_year_month_header
        year_header + print_month_names + print_label_weekdays
    end

    def gather_weeks
        calendar_days = []
        (1..12).each do |month|
            calendar = Month.new(month, @year)
            calendar = calendar.final_days_format
            calendar_days << calendar.gsub!(/\n/, '')
        end
        calendar_days
    end

    def whitespace(week)
        i = week.length
        whitespace = []
        num = 20 - i
        num.times do
            whitespace << " "
        end
        whitespace
    end

    def print_weeks(i, j, k)
        days = gather_weeks
        first_weeks = []
        month1 = days[i].split("")
        month2 = days[j].split("")
        month3 = days[k].split("")
        6.times do
            week1 = month1.shift(20)
            week2 = month2.shift(20)
            week3 = month3.shift(20)
            first_weeks << week1 + whitespace(week1) << "  "
            first_weeks << week2 + whitespace(week2) << "  "
            first_weeks << week3
            first_weeks << whitespace(week1) unless week3.length < 20
            first_weeks << "\n"
        end
        first_weeks.join
        
    end

    def print_months
        a = 0
        b = 1
        c = 2
        final_year = []
        4.times do
            final_year << year_header if a == 0
            final_year << print_month_names(a,b,c)
            final_year << print_label_weekdays
            final_year << print_weeks(a,b,c)
            a += 3
            b += 3
            c += 3
        end
        final_year.join
    end

    def print_everything
        print_months
    end


end