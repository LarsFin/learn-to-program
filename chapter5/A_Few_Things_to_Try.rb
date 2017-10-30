#!/Usr/bin/env ruby
puts "What is your first name?"
first_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
puts "What is/are your middle name(s)?"
mid_name = gets.chomp
full_name = first_name + " " + mid_name + " " + last_name
puts "Greetings #{full_name}!"
puts "What is your favourite number?"
favourite_number = gets.chomp
puts "ah I see... #{favourite_number}"
better_favourite_number = ((favourite_number.to_f) ** 2).to_i
puts "Might you prefer this better number instead; #{better_favourite_number}"
