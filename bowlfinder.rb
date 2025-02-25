require_relative "database"

class Bowling
  attr_accessor :number

  def initialize
    @number = number
  end
end

def y_or_n
  puts "\n"
  puts "This is the NFL Super Bowl search tool! Search for a Super Bowl by YEAR or by NUMBER?"
  loop do
    puts "1. Search by year (1966-2025)"
    puts "2. Search by number (1-59)"
    puts "3. Exit search tool"
    puts "Choose an option:"
    self.number = gets.chomp.to_i

    case self.number
    when 1
      if self.number - 1966 < 0 || self.number - 1966 > 58
        puts "Not a valid year!"
        puts "\n"
      else
        idx = self.number - 1966
        sb_num = idx + 1
        puts "Super Bowl #{rnum} took place in #{self.number}. The teams were the #{teams[team1[idx]]} versus the #{teams[team2[idx]]}."
        puts "For more information check this link: https://en.wikipedia.org/wiki/Super_Bowl_#{rnum}"
        puts "\n"
      end
    when 2
      if self.number < 1 || self.number > 59
        puts "Not a valid number!"
        puts "\n"
      else
        idx = self.number - 1
        sb_num = self.number
        year = idx + 1966
        puts "Super Bowl #{rnum} took place in #{year}. The teams were the #{teams[team1[idx]]} versus the #{teams[team2[idx]]}."
        puts "For more information check this link: https://en.wikipedia.org/wiki/Super_Bowl_#{rnum}"
        puts "\n"
      end
    when 3
      puts "Goodbye!"
      break
    else
      puts "Not a valid option!"
      puts "\n"
    end
  end
