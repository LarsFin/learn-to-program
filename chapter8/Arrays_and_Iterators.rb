#!/Usr/bin/env ruby
colors = ["red", "blue", "yellow", "purple", "green", "orange"]
puts colors
puts ""
puts colors[0]
puts colors[2]
puts colors[3]
puts colors[20]
colors[6] = "black"
puts colors
#####
#each~ ~allows us to apply a rule upon every variable within an array
numbers = [2, 5, 11, 142]
numbers.each { |n|
  r = n * 3
  puts "#{n} times 3 is #{r}!"
}
puts ""
#times~ ~does a particular job n times e.g 4.times puts "example"
n = 8
n.times {
  puts n
  n -= 1
}
puts ""
#####
shapes = ["Circle", "Square", "Triangle"]
puts shapes
puts ""
puts shapes.to_s
puts ""
puts shapes.join(", ")
puts ""
puts shapes.join(" - ")
puts ""
animal_groups = [["cat", "dog"], ["turtle", "crocodile"], ["pigeon", "penguin"]]
puts animal_groups
#####
#push~ ~adds an object to the end of an array
#pop~ ~removes the last object from an array
#last~ ~gives the last object on an array
squares = [1, 4, 9, 16, 25]
puts squares.to_s
squares.push 36
puts squares.join(" ")
puts squares.last
puts squares.length
squares.pop
puts squares.join(" ")
puts squares.length
