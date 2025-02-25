class Bowling
  attr_accessor :input

  def initialize
    @input = input
  end

  def y_or_n
    # List of teams
    teams = { 
      :t0 => "Arizona Cardinals", 
      :t1 => "Atlanta Falcons", 
      :t2 => "Baltimore Colts", 
      :t3 => "Baltimore Ravens", 
      :t4 => "Buffalo Bills", 
      :t5 => "Carolina Panthers", 
      :t6 => "Chicago Bears", 
      :t7 => "Cincinnati Bengals", 
      :t8 => "Dallas Cowboys", 
      :t9 => "Denver Broncos", 
      :t10 => "Green Bay Packers", 
      :t11 => "Indianapolis Colts", 
      :t12 => "Kansas City Chiefs", 
      :t13 => "Los Angeles Raiders", 
      :t14 => "Los Angeles Rams", 
      :t15 => "Miami Dolphins", 
      :t16 => "Minnesota Vikings", 
      :t17 => "New England Patriots", 
      :t18 => "New York Giants", 
      :t19 => "New York Jets", 
      :t20 => "New Orleans Saints", 
      :t21 => "Oakland Raiders", 
      :t22 => "Philadelphia Eagles", 
      :t23 => "Pittsburgh Steelers", 
      :t24 => "San Diego Chargers", 
      :t25 => "San Francisco 49ers", 
      :t26 => "Seattle Seahawks", 
      :t27 => "St. Louis Rams", 
      :t28 => "Tampa Bay Buccaneers", 
      :t29 => "Tennessee Titans", 
      :t30 => "Washington Redskins" 
      }
      # First array of competing teams
      team1 = { 
      # 1960s  
      "ta1966" => :t12, "ta1967" => :t10, "ta1968" => :t20, "ta1969" => :t16, 
      # 1970s 
      :ta1970 => :t2, :ta1971 => :t8, :ta1972 => :t15, :ta1973 => :t16, :ta1974 => :t23, :ta1975 => :t9, :ta1976 => :t21, :ta1977 => :t8, :ta1978 => :t23, :ta1979 => :t14, 
      # 1980s
      :ta1980 => :t21, :ta1981 => :t25, :ta1982 => :t15, :ta1983 => :t30, :ta1984 => :t15, :ta1985 => :t6, :ta1986 => :t10, :ta1987 => :t30, :ta1988 => :t7, :ta1989 => :t25, 
      # 1990s
      4, 30, 4, 8, 24, 8, 17, 10, 9, 27, 
      # 2000s
      3, 27, 21, 5, 17, 26, 11, 18, 23, 20, 
      # 2010s
      23, 18, 3, 26, 17, 5, 17, 22, 17, 25, 
      # 2020s 
      12, 14, 12, 25, 12
      }
      # Second array of competing teams
      team2 = [
      # 1960s   
      10, 21, 2, 12, 
      # 1970s 
      8, 15, 30, 15, 16, 23, 16, 9, 8, 23, 
      # 1980s
      22, 7, 30, 13, 25, 17, 18, 9, 25, 9, 
      # 1990s
      18, 4, 8, 4, 25, 23, 10, 9, 1, 29, 
      # 2000s
      18, 17, 28, 17, 22, 23, 6, 17, 0, 11, 
      # 2010s
      10, 17, 25, 9, 26, 9, 1, 17, 14, 12, 
      # 2020s 
      28, 7, 22, 12, 22
      ]

    puts "\n"
    puts "This is the NFL Super Bowl search tool! Search for a Super Bowl by YEAR or by NUMBER?"
    loop do
      puts "1. Search by year (1966-2024)"
      puts "2. Search by number (1-59)"
      puts "3. Exit search tool"
      puts "Choose an option:"
      decision = gets.chomp.to_i

      case decision
      when 1
        puts "Please input the year of the Super Bowl you want information for:"
        self.input = gets.chomp.to_i

        if self.input - 1966 < 0 || self.input - 1966 > 58
          puts "\n"
          puts "Not a valid year!"
          puts "\n"
        else
          idx = self.input - 1966
          sb_num = idx + 1
          # roman numeral creator (1-99)
          if sb_num.to_s.length == 2
            if sb_num.to_s.chars.map(&:to_i)[0] <= 3
              rnuma = "X"
              rnuma = rnuma * sb_num.to_s.chars.map(&:to_i)[0]
            elsif sb_num.to_s.chars.map(&:to_i)[0] == 4
              rnuma = "XL"
            elsif sb_num.to_s.chars.map(&:to_i)[0] == 5
              if sb_num.to_s.chars.map(&:to_i)[1] == 0
                rnuma = "50"
              else
                rnuma = "L"
              end
            elsif sb_num.to_s.chars.map(&:to_i)[0] <= 8
              rnumz = "X"
              rnumx = rnumz * (sb_num.to_s.chars.map(&:to_i)[0] - 5)
              rnuma = "L" + rnumx
            else
              rnuma = "XC"
            end
            if sb_num.to_s.chars.map(&:to_i)[1] == 0
              rnumb = ""
            elsif sb_num.to_s.chars.map(&:to_i)[1] <= 3
              rnumb = "I"
              rnumb = rnumb * sb_num.to_s.chars.map(&:to_i)[1]
            elsif sb_num.to_s.chars.map(&:to_i)[1] == 4
              rnumb = "IV"
            elsif sb_num.to_s.chars.map(&:to_i)[1] == 5
              rnumb = "V"
            elsif sb_num.to_s.chars.map(&:to_i)[1] <= 8
              rnumz = "I"
              rnumi = rnumz * (sb_num.to_s.chars.map(&:to_i)[1] - 5)
              rnumb = "V" + rnumi
            else
              rnumb = "IX"
            end
            rnum = rnuma + rnumb
          else
            if sb_num.to_s.chars.map(&:to_i)[0] == 0
              rnumb = ""
            elsif sb_num.to_s.chars.map(&:to_i)[0] <= 3
              rnumb = "I"
              rnumb = rnumb * sb_num.to_s.chars.map(&:to_i)[0]
            elsif sb_num.to_s.chars.map(&:to_i)[0] == 4
              rnumb = "IV"
            elsif sb_num.to_s.chars.map(&:to_i)[0] == 5
              rnumb = "V"
            elsif sb_num.to_s.chars.map(&:to_i)[0] <= 8
              rnumz = "I"
              rnumi = rnumz * (sb_num.to_s.chars.map(&:to_i)[0] - 5)
              rnumb = "V" + rnumi
            else
              rnumb = "IX"
            end
            rnum = rnumb
          end
          puts "Super Bowl #{rnum} was the championship game for the #{self.input} season. The teams were the #{teams[team1[idx]]} versus the #{teams[team2[idx]]}."
          puts "For more information check this link: https://en.wikipedia.org/wiki/Super_Bowl_#{rnum}"
          puts "\n"
        end
      when 2
        puts "Please input the number of the Super Bowl you want information for:"
        self.input = gets.chomp.to_i

        if self.input < 1 || self.input > 59
          puts "\n"
          puts "Not a valid number!"
          puts "\n"
        else
          idx = self.input - 1
          sb_num = self.input
          date = idx + 1966
          # roman numeral creator (1-99)
          if sb_num.to_s.length == 2
            if sb_num.to_s.chars.map(&:to_i)[0] <= 3
              rnuma = "X"
              rnuma = rnuma * sb_num.to_s.chars.map(&:to_i)[0]
            elsif sb_num.to_s.chars.map(&:to_i)[0] == 4
              rnuma = "XL"
            elsif sb_num.to_s.chars.map(&:to_i)[0] == 5
              if sb_num.to_s.chars.map(&:to_i)[1] == 0
                rnuma = "50"
              else
                rnuma = "L"
              end
            elsif sb_num.to_s.chars.map(&:to_i)[0] <= 8
              rnumz = "X"
              rnumx = rnumz * (sb_num.to_s.chars.map(&:to_i)[0] - 5)
              rnuma = "L" + rnumx
            else
              rnuma = "XC"
            end
            if sb_num.to_s.chars.map(&:to_i)[1] == 0
              rnumb = ""
            elsif sb_num.to_s.chars.map(&:to_i)[1] <= 3
              rnumb = "I"
              rnumb = rnumb * sb_num.to_s.chars.map(&:to_i)[1]
            elsif sb_num.to_s.chars.map(&:to_i)[1] == 4
              rnumb = "IV"
            elsif sb_num.to_s.chars.map(&:to_i)[1] == 5
              rnumb = "V"
            elsif sb_num.to_s.chars.map(&:to_i)[1] <= 8
              rnumz = "I"
              rnumi = rnumz * (sb_num.to_s.chars.map(&:to_i)[1] - 5)
              rnumb = "V" + rnumi
            else
              rnumb = "IX"
            end
            rnum = rnuma + rnumb
          else
            if sb_num.to_s.chars.map(&:to_i)[0] == 0
              rnumb = ""
            elsif sb_num.to_s.chars.map(&:to_i)[0] <= 3
              rnumb = "I"
              rnumb = rnumb * sb_num.to_s.chars.map(&:to_i)[0]
            elsif sb_num.to_s.chars.map(&:to_i)[0] == 4
              rnumb = "IV"
            elsif sb_num.to_s.chars.map(&:to_i)[0] == 5
              rnumb = "V"
            elsif sb_num.to_s.chars.map(&:to_i)[0] <= 8
              rnumz = "I"
              rnumi = rnumz * (sb_num.to_s.chars.map(&:to_i)[0] - 5)
              rnumb = "V" + rnumi
            else
              rnumb = "IX"
            end
            rnum = rnumb
          end
          puts "Super Bowl #{rnum} was the championship game for the #{date} season. The teams were the #{teams[team1[idx]]} versus the #{teams[team2[idx]]}."
          puts "For more information check this link: https://en.wikipedia.org/wiki/Super_Bowl_#{rnum}"
          puts "\n"
        end
      when 3
        puts "Goodbye!"
        break
      else
        puts "\n"
        puts "Not a valid option!"
        puts "\n"
      end
    end
  end
end
