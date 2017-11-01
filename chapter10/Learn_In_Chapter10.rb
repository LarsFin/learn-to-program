#!/Usr/bin/env ruby
#recursion ==> when a method calls upon itself
def questiontime
  n1 = rand(10) + 1
  n2 = rand(10) + 1
  puts "What is #{n1} times #{n2}?"
  correct = n1 * n2
  ans = gets.chomp.to_i
  ans == correct ? (puts "CORRECT!") : (puts "WRONG! Try again") & (questiontime)
end

questiontime

#####

def factorial(n)
  x = n.to_i
  if x < 0
    return "Number cannot be negative"
  end

  if x <= 1
    1
  else
    x * factorial(x - 1)
  end
end

puts "Give a non negative number!"
f = gets.chomp
puts factorial(f)
puts ""
#####
# 1 => land
# 0 => water
world = [[1,1,1,1,1,1,1],
         [1,1,1,1,1,0,1],
         [0,1,1,1,0,1,1],
         [0,0,1,1,1,0,0],
         [0,0,0,0,1,1,0],
         [0,1,0,0,0,0,0],
         [0,0,0,0,0,0,0]]
def continent_size(world, x, y)
  if world[y][x] != 1
    return 0
  end

  size = 1
  world[y][x] = 2

  size = size + continent_size(world, x-1, y-1)
  size = size + continent_size(world, x, y-1)
  size = size + continent_size(world, x+1, y-1)
  size = size + continent_size(world, x-1, y)
  size = size + continent_size(world, x+1, y)
  size = size + continent_size(world, x-1, y+1)
  size = size + continent_size(world, x, y+1)
  size = size + continent_size(world, x+1, y+1)
end
set = 0
while set <= 6
  puts world[set].join(" ")
  set += 1
end
puts continent_size(world, 3, 3)
puts ""
#####
###
####
def sort(ary) #What we call upon
  rec_sort(ary, []) # calls second method upon original array and an empty array
end

def rec_sort unsorted, sorted #original array => unsorted & new array => sorted
  if unsorted.length <= 0 #easy if unsorted array is empty => job is done
    return sorted #So if we puts this it will give us the sorted array
  end

  smallest = unsorted.pop #We take the last word in the unsorted (original) array
  still_unsorted = [] #Define a new array this is empty called still unsorted

  unsorted.each { |obj| #take each word from the unsorted (original) array
    if obj < smallest #If it is smaller than the last word <comes before alphabetically>
      still_unsorted.push(smallest) #So smallest isn't in fact the smallest thus we push it into the new array still unsorted
      smallest = obj #We set smallest now equal to the object that was in fact smaller than the before stated
    else
      still_unsorted.push obj #On this path object was not smaller than the before stated smallest.
    end
  }

  sorted.push(smallest) #We now push the last tested word from the .each step before and can confirm it is infact the smallest word so we push it into the sorted array!
  rec_sort still_unsorted, sorted #There won't be any words in the array unsorted now so we have to test the method on still_unsorted and sorted
end

my_array = ["chicken", "duck", "eagle", "duck", "chicken", "chicken"]
puts sort(my_array)
