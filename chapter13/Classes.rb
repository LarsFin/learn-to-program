#!/Usr/bin/env ruby
#Another way of applying methods;
class Integer #This will put the defintion within the Integer Class.
  def is_odd? #This method will now be applied to all integers
    if self % 2 == 1
      odd = true
    else
      odd = false
    end
    puts odd
  end
end
8.is_odd? #Now we can apply the method like this
puts " "
#####
#Creating Classes
class Coin
  def flip
    face = ["heads", "tails"]
    return face[(rand(2))]
  end
end
coins = [Coin.new, Coin.new, Coin.new]
coins.each { |coin|
  puts coin.flip
}
puts " "
#####
#Instance Variables
class Coin
  def flip
    face = ["heads", "tails"]
    @instance = face[(rand(2))]
  end
  def result
    return @instance #This instance variable helps us track the result of the coin flip throughout the class. Of course can be altered
  end
end
penny = Coin.new
puts "Testing without .flip method!::: " + "#{penny.result}" #Nil... Because we haven't set the instance variable equal to anything
penny.flip
puts penny.result
puts penny.result
puts penny.result
puts " "
penny.flip
puts penny.result
puts penny.result
puts penny.result
puts " "
#####
#To prevent the Nil dilema we can state an initialize method!
#As .result has already been set;; have to make a new class to test
class Die
  def initialize
    roll
  end
  def roll
    @instance = 1 + rand(6)
  end
  def result
    return @instance
  end
  def cheat
    @instance = 6
  end
end
puts Die.new.result #Will be different as each time we are making a new die
puts Die.new.result #thus a different instance
mydie = Die.new
puts mydie.result #Will be the same as the instance has been saved for mydie
puts mydie.result #unless rolled again of course
mydie.roll
puts mydie.result
mydie.cheat
puts mydie.result
puts " "
#####
#test
class OBJECT
  def initialize
    puts "YOU MADE A NEW OBJECT!"
  end
end
obj = OBJECT.new
puts " "
#####
#Baby Dragon
class Dragon
  def initialize(name) #Creating the variables which we will need to track to look after our virtual baby Dragon
    @name = name
    @asleep = false
    @hunger = 0
    @toilet_urgency = 0
    puts "#{@name} is born!"
  end
  def feed
    puts "You fed #{@name}."
    @hunger = 0
    next_
  end
  def walk
    puts "You walked #{@name}."
    @toilet_urgency = 0
    next_
  end
  def bed
    puts "You put #{@name} to bed."
    @asleep = true
    3.times {
      if @asleep
        next_
      end
      if @asleep
        puts "#{@name} snores, filling the room with smoke."
      end
    }
    if @asleep
      @asleep = false
      puts "#{@name} wakes up and stretches."
    end
  end
  def toss
    puts "You toss #{@name} up into the air."
    puts "#{@name} giggles, which singes your eyebrows"
    next_
  end
  def rock
    puts "You rock #{@name} gently."
    @asleep = true
    puts "#{@name} briefly dozes off..."
    next_
    if @asleep
      @asleep = false
      puts "...but wakes up when you stop."
    end
  end
  private
  def hungry?
    @hunger >= 8
  end
  def toilet?
    @toilet_urgency >= 8
  end
  def next_
    if @hunger < 10
      @hunger += 1
      @toilet_urgency -= 1
    else
      if @asleep
        @asleep = false
        puts "#{@name} wakes up suddenly!"
      end
      puts "#{@name} is starving! In desperation, he eats you!!! x _ x "
      exit
    end
    if @toilet_urgency >= 10
      @toilet_urgency = 0
      puts "Whoa! #{@name} should have been walked!"
    end
    if hungry?
      if @asleep
        @asleep = false
        puts "#{@name} wakes up suddenly!"
      end
      puts "#{@name}'s tummy grumbles..."
    end
    if toilet?
      if @asleep
        @asleep = false
        puts "#{@name} wakes up suddenly!"
      end
      puts "#{@name} circles uncormfortably"
    end
  end
end
puts "You got a pet dragon! What do you want to call it?!"
name = gets.chomp
pet = Dragon.new("#{name}")
puts "Awesome! #{name} is delighted with it's new name."
puts "..."
class Dragon
  def interact
    puts "What do you want to do with #{@name} now?"
    puts "Type in a choice!; feed _ walk _ toss _ rock _ bedtime _ exit"
    int = gets.chomp.downcase
    happen = 0
    self.feed & happen = 1 if int == "feed"
    self.walk & happen = 1 if int == "walk"
    self.toss & happen = 1 if int == "toss"
    self.rock & happen = 1 if int == "rock"
    self.bed  & happen = 1 if int == "bedtime"
    exit if int == "exit"
    puts "Please type in one of the options" if happen == 0
  end
end
loop {
  pet.interact
}
