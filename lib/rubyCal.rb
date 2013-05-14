require_relative 'rubyCalYear'

if ARGV.length == 2
    month = ARGV[0]
    year = ARGV[1]

    cal = Month.new(month, year)
puts cal.print_month_calendar

else
    year = ARGV[0]     
    cal = Year.new(year)
    puts cal.print_everything
end






