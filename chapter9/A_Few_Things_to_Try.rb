#!/Usr/bin/env ruby
def ask question
  while true
    puts question
    response = gets.chomp.downcase

    if response == "yes" || response == "no"
      if response == "yes"
        return true
      end
      break
    else
      puts "Please answer with 'yes' or 'no'."
    end
  end
end

puts "START"
ask("Do you like eating tacos?")
ask("Do you like eating burritos?")
wets_bed = ask("Do you wet the bed?")
puts "Thankyou"
puts ""
puts wets_bed
puts ""
#####
puts "Give a number to turn into old roman numerals"

def oldrmn(a)
  n = a.to_i
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

num = gets.chomp
oldrmn(num)
puts ""
puts "Give a number to turn into new roman numerals"
#Got help from the solutions
def newrmn(a)
  rmn = []
  n = a.to_i
  thousands = (n / 1000)
  hundreds = (n % 1000 / 100)
  tens = (n % 100 / 10)
  ones = (n % 10)
  thousands.times {rmn.push("M")}
  if hundreds == 9
    rmn.push("CM")
  elsif hundreds == 4
    rmn.push("CD")
  else
    ((n % 1000) / 500).times {rmn.push("D")}
    ((n % 500) / 100).times {rmn.push("C")}
  end

  if tens == 9
    rmn.push("XC")
  elsif tens == 4
    rmn.push("XL")
  else
    ((n % 100) / 50).times {rmn.push("L")}
    ((n % 50) / 10).times {rmn.push("X")}
  end

  if ones == 9
    rmn.push("IX")
  elsif ones == 4
    rmn.push("IV")
  else
    ((n % 10) / 5).times {rmn.push("V")}
    (n % 5).times {rmn.push("I")}
  end
  puts rmn.join()
end

ex = gets.chomp
newrmn(ex)
