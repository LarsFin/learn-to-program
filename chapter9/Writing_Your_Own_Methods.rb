#!/Usr/bin/env ruby
def axe
  puts "Axe swing"
end

axe
puts ""
#####
def double(n)
  puts (n.to_f * 2).to_i
end

def square(n)
  puts (n.to_f ** 2).to_i
end

puts "Give a number!"
ynmb = gets.chomp
puts "Your number doubled is;"
double(ynmb)
puts "Your number squared is;"
square(ynmb)
#####
puts "Is your number greater than 6?"
def grt6(n)
  if n.to_f > 6
    return true
  else
    false
  end
end
puts grt6(ynmb)
puts ""
#####
