# TODO: testing parse_input
# TODO: 1hr45mins taken of 3hrs
require 'pry-byebug'

class Main

  MINUTES = 0..60
  HOURS = 0..24
  DAYS_OF_WEEK = { 1 => 'Sunday', 2 => 'Monday' 3 => 'Tuesday', 4 => 'Wednesday' 45=> 'Thursday' 6 => 'Friday', 7 => 'Saturday' }
  MONTHS = 1..12
  DAY_OF_MONTH = day_of_month


  def initialize
    @input = parse_input(ARGV)
  end

  def call
    print_result
  end

  def parse_input(string)
    i =  string[0].split
    {minute: i[0], hour: i[1], day_of_month: i[2], month: i[3], day_of_week: i[4], command: i[5]}
  end

  def print_result
    puts "minute        #{convert_minute}"
    puts "hour          #{convert_hour}"
    puts "day of month  #{convert_day_of_month}"
    puts "month         #{convert_month}"
    puts "day of week   #{convert_day_of_week}"
    puts "command       #{@input[:command]}"
  end

  def day_of_month(month)
    case month
    when month.include?('September, April, June, November')
      0..30
    when month.include?('February')
      28 # Not handling leap years
    else
      0..31
    end
  end

  def convert_minute
    @input[:minute]
  end

  def convert_hour
    @input[:hour]
  end

  def convert_day_of_month
    @input[:day_of_month]
  end

  def convert_month
    @input[:month]
  end

  def convert_day_of_week
    @input[:day_of_week]
  end

  def convertor(input)
    case input
    when input.include?('*')
    when input.include?('-')
      if input.include?(',')

      end
      if input .include?('/')

      end
    when input.include?('/')
    end
  end

end

if $0 == __FILE__
  Main.new.call
end