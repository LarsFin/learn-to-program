#!/Usr/bin/env ruby
class OrangeTree
  def initialize
    @oranges = 0
    @age = 1
    @height = 0.5
  end
  def one_year_passes
    @age += 1
    if 11 > @age
      @height += (1.00 / @age)
    end
    if @oranges > 0
      @oranges -= 1
    end
    if @age > 4 && 20 > @age
      @oranges = 3
    elsif @age > 24
      puts "Orange tree died... "
    end
  end
  def height
    return "Orange tree height: #{@height.round(3)}m."
  end
  def count_oranges
    if @oranges > 1
      return "There are #{@oranges} oranges"
    elsif @oranges == 1
      return "There is one orange left!"
    else
      return "no oranges..."
    end
  end
  def pick_orange
    if @oranges > 0
      @oranges -= 1
      return "The orange is zesty and yummy!"
    else
      return "There were no oranges to pick... "
    end
  end
end
orangetree = OrangeTree.new
puts orangetree.height
orangetree.one_year_passes
puts orangetree.height
puts orangetree.pick_orange
3.times { orangetree.one_year_passes }
puts orangetree.height
puts orangetree.count_oranges
4.times { puts orangetree.pick_orange }
15.times { orangetree.one_year_passes }
puts orangetree.height
puts orangetree.count_oranges
orangetree.one_year_passes
puts orangetree.count_oranges
3.times { orangetree.one_year_passes }
puts orangetree.height
puts orangetree.pick_orange
orangetree.one_year_passes

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
      @toilet_urgency += 1
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
