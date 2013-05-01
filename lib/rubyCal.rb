require_relative 'rubyCalYear'

month = ARGV[0]
year = ARGV[1]
         
cal = Month.new(month, year)
puts cal.print_month_calendar






