class Bowling
  attr_accessor :input

  def initialize
    @input = input
  end

  def y_or_n
    # Hash of teams
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
      # First hash of competing teams
      team1 = { 
      # 1960s  
      "ta1966" => :t12, "ta1967" => :t10, "ta1968" => :t20, "ta1969" => :t16, 
      # 1970s 
      "ta1970" => :t2, "ta1971" => :t8, "ta1972" => :t15, "ta1973" => :t16, "ta1974" => :t23, "ta1975" => :t9, "ta1976" => :t21, "ta1977" => :t8, "ta1978" => :t23, "ta1979" => :t14, 
      # 1980s
      "ta1980" => :t21, "ta1981" => :t25, "ta1982" => :t15, "ta1983" => :t30, "ta1984" => :t15, "ta1985" => :t6, "ta1986" => :t10, "ta1987" => :t30, "ta1988" => :t7, "ta1989" => :t25, 
      # 1990s
      "ta1990" => :t4, "ta1991" => :t30, "ta1992" => :t4, "ta1993" => :t8, "ta1994" => :t24, "ta1995" => :t8, "ta1996" => :t17, "ta1997" => :t10, "ta1998" => :t9, "ta1999" => :t27, 
      # 2000s
      "ta2000" => :t3, "ta2001" => :t27, "ta2002" => :t21, "ta2003" => :t5, "ta2004" => :t17, "ta2005" => :t26, "ta2006" => :t11, "ta2007" => :t18, "ta2008" => :t23, "ta2009" => :t20, 
      # 2010s
      "ta2010" => :t23, "ta2011" => :t18, "ta2012" => :t3, "ta2013" => :t26, "ta2014" => :t17, "ta2015" => :t5, "ta2016" => :t17, "ta2017" => :t22, "ta2018" => :t17, "ta2019" => :t25, 
      # 2020s 
      "ta2020" => :t12, "ta2021" => :t14, "ta2022" => :t12, "ta2023" => :t25, "ta2024" => :t12 
      }
      # Second hash of competing teams
      team2 = { 
      # 1960s   
      "tb1966" => :t10, "tb1967" => :t21, "tb1968" => :t2, "tb1969" => :t12, 
      # 1970s 
      "tb1970" => :t8, "tb1971" => :t15, "tb1972" => :t30, "tb1973" => :t15, "tb1974" => :t16, "tb1975" => :t23, "tb1976" => :t16, "tb1977" => :t9, "tb1978" => :t8, "tb1979" => :t23, 
      # 1980s
      "tb1980" => :t22, "tb1981" => :t7, "tb1982" => :t30, "tb1983" => :t13, "tb1984" => :t25, "tb1985" => :t17, "tb1986" => :t18, "tb1987" => :t9, "tb1988" => :t25, "tb1989" => :t9, 
      # 1990s
      "tb1990" => :t18, "tb1991" => :t4, "tb1992" => :t8, "tb1993" => :t4, "tb1994" => :t25, "tb1995" => :t23, "tb1996" => :t10, "tb1997" => :t9, "tb1998" => :t1, "tb1999" => :t29, 
      # 2000s
      "tb2000" => :t18, "tb2001" => :t17, "tb2002" => :t28, "tb2003" => :t17, "tb2004" => :t22, "tb2005" => :t23, "tb2006" => :t6, "tb2007" => :t17, "tb2008" => :t0, "tb2009" => :t11, 
      # 2010s
      "tb2010" => :t10, "tb2011" => :t17, "tb2012" => :t25, "tb2013" => :t9, "tb2014" => :t26, "tb2015" => :t9, "tb2016" => :t1, "tb2017" => :t17, "tb2018" => :t14, "tb2019" => :t12, 
      # 2020s 
      "tb2020" => :t28, "tb2021" => :t7, "tb2022" => :t22, "tb2023" => :t12, "tb2024" => :t22 
      }

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
          puts "Super Bowl #{rnum} was the championship game for the #{self.input} season. The teams were the #{teams.fetch(team1.fetch("ta" + self.input.to_s))} versus the #{teams.fetch(team2.fetch("tb" + self.input.to_s))}."
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
          puts "Super Bowl #{rnum} was the championship game for the #{date} season. The teams were the #{teams.fetch(team1.fetch("ta" + date.to_s))} versus the #{teams.fetch(team2.fetch("tb" + date.to_s))}."
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
