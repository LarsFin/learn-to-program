#!/Usr/bin/env ruby
#More mathematical methods
puts "Exponention"
puts 5 ** 1
puts 5 ** 2
puts 5 ** 0.5
puts "Modulus"
puts 5
puts (5 / 3)
puts 5 % 3
puts "Absolute"
puts (5 - 7).abs
puts (5 / 7).abs
#RNG
puts rand
puts rand
puts rand
puts rand(50)
puts rand(50)
puts rand(50)
puts rand(1)
puts rand(1)
puts rand(1)
#Wont give back cap number given to rng
#You can create a RNG seed so it will give an original random number sequence
#but then after (provided same seed) will result in same sequence
srand 100918
puts rand(51)
puts rand(51)
puts rand(51)
puts " "
srand 100918
puts rand(51)
puts rand(51)
puts rand(51)
#!!! THIS WOULD BE USEFUL IF YOU WANTED TO MAKE A RANDOM PASSCODE EVERY TIME YOU
#START A GAME !!! ~~~ as the password originally is random but then if you have
#to enter it in game it can be tested against the seed!
puts "MATH OBJECT"
puts Math.sqrt(9)
puts Math::PI
puts "The area of a circle with radius 4 (rounded down) is; "
r = 4
puts (Math::PI * (r ** 2)).round(0)
puts Math::E
