#!/Usr/bin/env ruby
stringV = "this is a variable"
puts stringV
puts "Really " + stringV + "."
stringV = 15
puts stringV

var1 = 1
#var1 is set equal to 1
var2 = var1
#var2 is set equal to var1 by this line
puts "var1 = #{var1}"
puts "var2 = #{var2}"

var1 = 2
#var1 is set equal to 2
puts "var1 = #{var1}"
puts "var2 = #{var2}" 

var2 = var1
#var2 is set equal to the updated var1
puts "var1 = #{var1}"
puts "var2 = #{var2}"
