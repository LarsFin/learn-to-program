#!/Usr/bin/env ruby
#Angry BOSS!
puts "Your talking to your boss, ask for something you want from your job"
demand = gets.chomp
response = demand.to_s.upcase
puts "'#{response}!' WHAT ARE YA CRAZY!? ARE YA OUTTA YA MIND!? YOUR FIRED!!"
puts " "
#Table of Contents
move1 = 15
move2 = 28.05
puts("Table of Contents".rjust(35))
puts " "
x = "Chapter 1:  "
y = "Getting Started"
z = "page  1"
puts "#{x}" + "#{y}".ljust(move1) + "#{z}".rjust(move2)
x = "Chapter 2:  "
y = "Numbers"
z = "page  9"
puts "#{x}" + "#{y}".ljust(move1) + "#{z}".rjust(move2)
x = "Chapter 3:  "
y = "Letters"
z = "page 13"
puts "#{x}" + "#{y}".ljust(move1) + "#{z}".rjust(move2)
