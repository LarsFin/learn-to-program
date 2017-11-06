#!/Usr/bin/env ruby
#Extending built in classes
class Array
  def shuffle
    array = self #Must be set to self as dealing with fixed constants using Array will lead to errors
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
end
list = [1, 2, 3, 4, 5, 6]
puts list.shuffle
#####
puts " "
class Integer
  def factorial
    num = self
    init = num
    prod = 1
    loop do
      if num > 0
        prod = num * prod
        num -= 1
      else
        break
      end
    end
    return "The factorial of #{init} is #{prod}"
  end
  def oldrmn
    n = self
    rmn = []
    (n / 1000).times {rmn.push("M")}
    ((n % 1000) / 500).times {rmn.push("D")}
    ((n % 500) / 100).times {rmn.push("C")}
    ((n % 100) / 50).times {rmn.push("L")}
    ((n % 50) / 10).times {rmn.push("X")}
    ((n % 10) / 5).times {rmn.push("V")}
    ((n % 5) / 1).times {rmn.push("I")}
    puts rmn.join()
  end
end
puts "Give a posotive integer!"
ans = gets.chomp.to_i
puts ans.factorial
puts ans.oldrmn
