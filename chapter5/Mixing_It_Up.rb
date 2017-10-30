#!/Usr/bin/env ruby
#Can only add strings to numbers by converting on into the other;
var1 = 1
var2 = '1'
puts var1.to_s + var2
puts var1 + var2.to_i

puts "Some conversions;"
puts "15".to_f
puts "9.99".to_f
puts "9.99".to_i
puts "Some more;"
puts "5 is a prime number".to_i
puts "An example of a prime number is 5".to_i
puts "prime numbers".to_f
#An intersting fact ~ when you use puts it uses .to_s so hence numbers can be
#displayed the same way strings can
puts " "
puts "Type something;"
puts gets
puts " "
puts "What is your favourite food?"
favourite_food = gets.chomp
puts "I see, your favourite food is #{favourite_food}."
