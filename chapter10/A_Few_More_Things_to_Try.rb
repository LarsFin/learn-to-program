#!/Usr/bin/env ruby
def engnum(num)
  if num < 0
    return "CANNOT BE NEGATIVE"
  end
  if num == 0
    return "ZERO"
  end

  num_string = ""

  ones = ["ONE", "TWO", "THREE", "FOUR", "FIVE", "SIX", "SEVEN", "EIGHT", "NINE"]
  tens = ["TEN", "TWENTY", "THIRTY", "FORTY", "FIFTY", "SIXTY", "SEVENTY", "EIGHTY", "NINETY"]
  eens = ["ELEVEN", "TWELVE", "THIRTEEN", "FOURTEEN", "FIFTEEN", "SIXTEEN", "SEVENTEEN", "EIGHTEEN", "NINETEEN"]
  bigr = [["HUNDRED", 2], ["THOUSAND", 3], ["MILLION", 6], ["TRILLION", 9]]

  left = num

  while bigr.length > 0
    big_pair = bigr.pop
    big_name = big_pair[0]
    big_base = 10 ** big_pair[1]
    write = left / big_base
    left = left - write * big_base

    if write > 0
      repeat = engnum(write)
      num_string = num_string + repeat + " " + big_name

      if left > 0
        num_string = num_string + " "
      end
    end
  end

  write = left / 10
  left = left - write * 10

  if write > 0
    if write == 1 && left > 0
      num_string = num_string + eens[left - 1]
      left = 0
    else
      num_string = num_string + tens[write - 1]
    end

    if left > 0
      num_string = num_string + "-"
    end
  end

  write = left
  left = 0

  if write > 0
    num_string = num_string + ones[write - 1]
  end
  return num_string
end

puts engnum(2222)
puts " "
#####
x = 999
while x != 0
  xd = x - 1
  puts "#{x} bottles of beer on the wall, #{x} bottles of beer."
  if xd != 0
    puts "Take one down pass it around, #{xd} bottles of beer on the wall."
  else
    puts "Take one down and pass it around, no more bottles of beer on the wall."
  end
  puts ""
  x -= 1
end
puts "No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall."
