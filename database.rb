teams = [
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
]

team1 = [
# 1960s  
12, 10, 20, 16, 
# 1970s 
2, 8, 15, 16, 23, 9, 21, 8, 23, 14, 
# 1980s
21, 25, 15, 30, 15, 6, 10, 30, 7, 25, 
# 1990s
4, 30, 4, 8, 24, 8, 17, 10, 9, 27, 
# 2000s
3, 27, 21, 5, 17, 26, 11, 18, 23, 20, 
# 2010s
23, 18, 3, 26, 17, 5, 17, 22, 17, 25, 
# 2020s 
12, 14, 12, 25, 12
]

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





sb_list = Hash.new

sb_list.store(:year, 1966)
sb_list.store(:year, 1967)

# print sb_list
