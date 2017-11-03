#!/Usr/bin/env ruby
#Using .new to create a new variable of a certain class ==> CLASS.new
x = Array.new + [1, 2, 3, 4]
y = String.new + "A string"
z = Time.new

puts "#{x} \n#{y} \n#{z}\n "
#Time class
current_time = Time.new
in30_minutes = current_time + 1800
puts "#{current_time} \n#{in30_minutes}\n "
puts Time.local(1996, 7, 30, 10, 30) #Can state the time you wan't with .local
puts Time.gm(1996, 7, 30, 10, 30)
puts ""
if current_time < Time.local(2117)
  puts true
end
#Ranges
alphabet = "A".."Z"
alphabet.each { |l|
  print l + " "
}
puts " "
#Superpowers
puts "Please give a number ending in 3"
num = gets.chomp.to_s
last = (num.length - 1) #Just read much easier way to do this see below\/\/\/\/\/
if num[last] == "3" #Can just replace "last" with -1. That simple
  puts "Thankyou"
else
  puts "It was a pretty simple instruction"
end
puts " "
#Some more
syl = "I have no time for games"
puts syl[10, 14] #where to start from, then how many characters!
puts syl[10..13] #Where to start from .. Where to end!
puts " "
#a test for a file type;;;
def is_txt?(file)
  file.downcase[-4..-1] == ".txt"
end
puts is_txt?("work.txt")
puts is_txt?("funny.jpg")
