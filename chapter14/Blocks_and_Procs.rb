#!/Usr/bin/env ruby
# Procs
greeting = Proc.new {
  puts "Hello!"
}
greeting.call
puts " "
#####
multby2 = Proc.new { |x|
    prod = x * 2
    puts prod
}
multby2.call(4)
multby2.call(8)
puts " "
#####
#running procs through methods
def race(pro)
  puts "3... 2... 1... "
  pro.call
  puts "AND THEY'RE OFF!"
end

start = Proc.new {
  puts "GO!!"
}

race(start)
puts " "
#####
def system(question)
  question.call
  ans = gets.chomp
  if ( ans == "true" && $con == 1 ) || ( ans == "false" && $con == 0 )
    puts "CORRECT!"
  else
    puts "WRONG"
  end
end
q1 = Proc.new {
  puts "5 + 5 = 10"
  $con = 1
}
q2 = Proc.new {
  puts "15 / 3 = 3"
  $con = 0
}
puts "Answer true or false to the following statements;"
system(q1)
system(q2)
puts " "
#####
#The effects of different procs on the same method
def do_until_false(first_input, aproc)
  input = first_input
  output = first_input
  while output
    input = output
    output = aproc.call(input)
  end
  return input
end
build_array_of_squares = Proc.new { |array|
  last_number = array.last
  if last_number <= 0
    false
  else
    array.pop
    array.push(last_number * last_number)
    array.push(last_number - 1)
  end
}
always_false = Proc.new { |ignore|
  false
}
puts do_until_false([7], build_array_of_squares).inspect
test = "testing"
puts do_until_false(test, always_false)
puts " "
#####
#Methods that return Procs
def combine(proc1, proc2)
  Proc.new { |x|
    proc2.call(proc1.call(x))
  }
end
square = Proc.new { |x|
  (x ** 2)
  }
double = Proc.new { |x|
  (x * 2)
  }
puts combine(square, double).call(5)
puts combine(double, square).call(5)
puts " "
#####
#Passing blocks into methods
def timer(description, &block)
  start_time = Time.new
  block.call
  duration = Time.new - start_time
  puts "#{description} ::: #{duration} seconds"
end
timer "Printing Up To 999" do
  num = 0
  999.times {
    print num
    num += 1
  }
  puts " "
end
