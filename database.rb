# stuff goes in here
teams = Array.new

teams.push(
"Arizona Cardinals", 
"Atlanta Falcons", 
"Baltimore Colts", 
"Baltimore Ravens", 
"Buffalo Bills", 
"Carolina Panthers", 
"Chicago Bears", 
"Cincinnati Bengals", 
"Dallas Cowboys", 
"Denver Broncos", 
"Green Bay Packers", 
"Indianapolis Colts", 
"Kansas City Chiefs", 
"Los Angeles Raiders", 
"Los Angeles Rams", 
"Miami Dolphins", 
"Minnesota Vikings", 
"New England Patriots", 
"New York Giants", 
"New York Jets", 
"New Orleans Saints", 
"Oakland Raiders", 
"Philadelphia Eagles", 
"Pittsburgh Steelers", 
"San Diego Chargers", 
"San Francisco 49ers", 
"Seattle Seahawks", 
"St. Louis Rams", 
"Tampa Bay Buccaneers", 
"Tennessee Titans", 
"Washington Redskins"
)

test = 40

if test.to_s.length == 2
  if test.to_s.chars.map(&:to_i)[0] == 0
    rnum = "No"
  elsif test.to_s.chars.map(&:to_i)[0] =< 3
    rnuma = "X"
    rnuma = rnuma * (test.to_s.chars.map(&:to_i)[0] - 1)
  elsif test.to_s.chars.map(&:to_i)[0] == 4
    rnuma = "XL"
  elsif test.to_s.chars.map(&:to_i)[0] == 5
    rnuma = "L"
  elsif test.to_s.chars.map(&:to_i)[0] =< 8
    rnumz = "X"
    rnumx = rnumz * (test.to_s.chars.map(&:to_i)[0] - 3)
    rnuma = "L" + rnumx
  else
    rnuma = "XC"
  end
  if test.to_s.chars.map(&:to_i)[1] == 0
    rnumb = ""
  elsif test.to_s.chars.map(&:to_i)[1] =< 3
    rnumb = "I"
    rnumb = rnumb * (test.to_s.chars.map(&:to_i)[1] - 1)
  elsif test.to_s.chars.map(&:to_i)[1] == 4
    rnumb = "IV"
  elsif test.to_s.chars.map(&:to_i)[1] == 5
    rnumb = "V"
  elsif test.to_s.chars.map(&:to_i)[1] =< 8
    rnumz = "I"
    rnumi = rnumz * (test.to_s.chars.map(&:to_i)[1] - 3)
    rnumb = "V" + rnumi
  else
    rnumb = "IX"
  end
  if rnum = "No"
    rnum = "Invalid Number"
  else
    rnum = rnuma + rnumb
  end
else
  if test.to_s.chars.map(&:to_i)[0] == 0
    rnumb = ""
  elsif test.to_s.chars.map(&:to_i)[0] =< 3
    rnumb = "I"
    rnumb = rnumb * (test.to_s.chars.map(&:to_i)[0] - 1)
  elsif test.to_s.chars.map(&:to_i)[0] == 4
    rnumb = "IV"
  elsif test.to_s.chars.map(&:to_i)[0] == 5
    rnumb = "V"
  elsif test.to_s.chars.map(&:to_i)[0] =< 8
    rnumz = "I"
    rnumi = rnumz * (test.to_s.chars.map(&:to_i)[0] - 3)
    rnumb = "V" + rnumi
  else
    rnumb = "IX"
  end
  rnum = rnumb
end




print rnum

sb_list = Hash.new

sb_list.store(:year, 1966)
sb_list.store(:year, 1967)

# print sb_list

class Database
  attr_accessor :year

  def initialize
    @year = year
  end
end
