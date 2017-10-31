#!/Usr/bin/env ruby
x = 99
while x != 0
  xd = x - 1
  puts "#{x} bottles of beer on the wall, #{x} bottles of beer."
  if xd != 0
    puts "Take one down pass it around, #{xd} bottles of beer on the wall."
  else
    puts "Take one down and pass it around, no more bottles of beer on the wall."
  end
  puts ""
  x -= 1
end
puts "No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall."
puts ""
#####
var = 2
while true
  puts "What do you want to say to deaf Grandma? Say bye loudly to leave her."
  yrrand = 1930 + rand(21).to_i
  speech = gets.chomp
  if speech != speech.upcase
    puts "Grandma says: HUH?! SPEAK UP!!"
    var = 2
  elsif speech != "BYE"
    puts "Grandma says: NO, NOT SINCE #{yrrand}!"
    var = 2
  elsif var != 0
    puts "Grandma says: STAY A BIT LONGER!"
    var -= 1
    puts "... "
    puts "You might need to tell her again"
    puts ""
  else
    puts "Grandma says: Okay no need to shout"
    puts "You managed to escape... "
    puts ""
    break
  end
end
#####
puts "Give a starting year;"
yr1 = gets.chomp.to_i
puts "Give an ending year;"
yr2 = gets.chomp.to_i
puts "All leap years between #{yr1} and #{yr2};"
for year in yr1..yr2
  if year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
    puts year
  end
end
