#!/Usr/bin/env ruby
def shuffle(array)
  shuffled = []
  while array.length > 0
    rng = rand(array.length)
    rngcheck = 0
    repeatarray = []
    array.each { |obj|
      if rngcheck == rng
        shuffled.push(obj)
      else
        repeatarray.push(obj)
      end
      rngcheck = rngcheck + 1
    }
    array = repeatarray
  end
  return shuffled
end

my_array = ["cat", "dog", "egg", "fig", "gum"]
puts shuffle(my_array)
puts ""
#####
def sort(ary) #What we call upon
  rec_sort(ary, []) # calls second method upon original array and an empty array
end

def rec_sort(unsorted, sorted) #original array => unsorted & new array => sorted
  if unsorted.length <= 0 #easy if unsorted array is empty => job is done
    return sorted #So if we puts this it will give us the sorted array
  end

  smallest = unsorted.pop #We take the last word in the unsorted (original) array
  still_unsorted = [] #Define a new array this is empty called still unsorted

  unsorted.each { |obj| #take each word from the unsorted (original) array
    if obj.downcase < smallest.downcase #If it is smaller than the last word <comes before alphabetically>
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
