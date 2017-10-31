#!/Usr/bin/env ruby
#Comparison Methods
puts 1 == 2
puts 1 >= 2
puts 1 <= 2
puts 1 < 2
puts 1 != 2
#"greater" or "smaller" than signs come before equals
puts "antelope" < "zebra"
puts "yes" == "y"
puts "yes" == "yes"
#All capital letters will be smaller than lower case letters;
puts "antelope" < "Zebra"
#When camparing numbers within strings it is important to realise that only the
#first digit will be compared of a number;
puts "1" < "999"
puts "1" < "a"
puts "1" < "A"
#Branching
puts "What is 13 times 8"
ans = gets.chomp.to_i
#####
if ans == 104
  puts "CORRECT"
else
  puts "WRONG"
end
#Looping
#--While
x = 4
while x != 8
  puts x
  x += 1
end
#####
puts "What could be the square root of 16?"
ans = gets.chomp.to_i
if ans == 4
  puts "CORRECT"
elsif ans == -4
  puts "CORRECT"
else
  puts "WRONG"
end
#####
puts "What could be the square root of 25?"
ans = gets.chomp.to_i
if ans == 5 || ans == -5
  puts "CORRECT"
else
  puts "WRONG"
end
#####
puts "Give a number from 1 to 10"
ans = gets.chomp.to_i
if ans >= 1 && ans <= 10
  puts "thanks"
else
  puts "number not between 1 and 10"
end
#####
