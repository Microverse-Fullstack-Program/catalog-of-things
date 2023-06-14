module ParseToDate
  require 'date'

  def parse_to_date(date_string)
    Date.strptime(date_string, '%d-%m-%Y')
  rescue ArgumentError
    puts 'Invalid date format input, make sure that you use the (DD-MM-YYYY) format:'
    print 'Re-enter date: '
    date_string = gets.chomp
    parse_to_date(date_string)
  end
end
