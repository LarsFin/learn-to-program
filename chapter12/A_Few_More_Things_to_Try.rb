#!/Usr/bin/env ruby
def roman_to_int(numeral)
  numcon = Hash.new
  numcon["I"] = 1
  numcon["V"] = 5
  numcon["X"] = 10
  numcon["L"] = 50
  numcon["C"] = 100
  numcon["D"] = 500
  numcon["M"] = 1000

  result = 0
  last_check = 0
  index = numeral.length - 1
  while index >= 0
    capital = numeral[index].upcase
    digit = numcon[capital]
    index -= 1
    if digit > last_check
      result = result + digit
      check = digit
      last_check = last_check + check
    else
      result = result - digit
    end
  end
  return result
end
puts roman_to_int("ix")
puts "Give a roman numeral to put into an integer!"
ans = gets.chomp
puts roman_to_int(ans)
puts " "
#####
birthday = Hash.new
File.read("birthday.txt").each_line { |person|
  person = person.chomp
  comma = 0
  while person[comma] != "," && comma < person.length #searches for the first comma as after that follows the day
    comma += 1
  end
  name = person[0..(comma - 1)]
  day = person[(comma + 2), 6]
  birthday[name] = day
}
puts "State a name to find out their birthday"
ans = gets.chomp
day = birthday[ans]
puts day
