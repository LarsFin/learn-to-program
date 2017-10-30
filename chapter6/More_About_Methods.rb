#!/Usr/bin/env ruby
string1 = "Turn me around!"
string2 = "rotator"
#reverse
puts string1
puts string1.reverse
puts string2
puts string2.reverse
puts " "
#length == gives the number of characters in a string
puts string1
puts string1.length
puts " "
puts "Write a (very)short story!"
story = gets.chomp
no = story.length.to_s
puts "There are " + no + " characters in your story!"
#upcase :: capitalizes all letters in a string
#downcase :: puts all letters into lower case
#swapcase :: Turns all lower case letters into upper case and vice versa
#capitalize :: Capitalizes the first letter of a string
example = "doGgo"
puts example
puts example.upcase
puts example.downcase
puts example.swapcase
puts example.capitalize
#center(line_width) moves your strings by adding spaces to the beginning and end
#end of the string to put it in the middle
puts " "
puts "Think of a cool title"
title = gets.chomp.to_s
puts(title.center(75))
str_move = 50
str = ">{TEXT}<"
puts(str.ljust(str_move))
puts(str.center(str_move))
puts(str.rjust(str_move))
puts(str.ljust(str_move * 0.5) + str.rjust(str_move * 0.5))
