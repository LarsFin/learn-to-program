#!/Usr/bin/env ruby
gvnwrds = []
puts "Give me some words, hit ENTER on an empty line to stop."
loop {
  newwrd = gets.chomp
  if newwrd == ""
    break
  else
    gvnwrds.push (newwrd)
  end
}
gvnwrds.each { |word|
  word.capitalize!
}
puts gvnwrds.sort
puts ""
###
inx = [["Chapter 1:  ", "Getting Started", "page  1"], ["Chapter 2:  ", "Numbers", "page  9"],["Chapter 3:  ", "Letters", "page 13"]]
move1 = 15
move2 = 28.05
puts("Table of Contents".rjust(35))
puts " "
x = inx[0][0]
y = inx[0][1]
z = inx[0][2]
puts "#{x}" + "#{y}".ljust(move1) + "#{z}".rjust(move2)
x = inx[1][0]
y = inx[1][1]
z = inx[1][2]
puts "#{x}" + "#{y}".ljust(move1) + "#{z}".rjust(move2)
x = inx[2][0]
y = inx[2][1]
z = inx[2][2]
puts "#{x}" + "#{y}".ljust(move1) + "#{z}".rjust(move2)
