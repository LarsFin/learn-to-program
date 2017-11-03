#!/Usr/bin/env ruby
birth_date = Time.local(1996, 7, 30, 10, 30, 45)
billionthsec = birth_date + 1000000000
puts billionthsec
if billionthsec > Time.new
  puts "You have not lived your billionth second yet!"
  time_left = (billionthsec - Time.new).round(0)
  yr = (time_left / 31536000).round(0)
  dy = (time_left / 86400).round(0) - (yr * 365)
  hr = (time_left / 3600).round(0) - ((dy * 24) + (yr * 8760))
  mn = (time_left / 60).round(0) - ((hr * 60) + (dy * 1440) + (yr * 525600))
  sc = (time_left) - ((mn * 60) + (hr * 3600) + (dy * 86400)+ (yr * 31536000))
  puts "#{yr} years, #{dy} days, #{hr} hours, #{mn} minutes and #{sc} seconds to go!"
end
puts " "
puts "What year were you born?"
yrbrn = gets.chomp
puts "Which month were you born in? (answer in number!)"
mnthbrn = gets.chomp
puts "What day were you born on? (answer in number!)"
dybrn = gets.chomp
difference = Time.new - Time.local(yrbrn, mnthbrn, dybrn)
age = (difference / 31536000).round(0)
puts "you are #{age} years old!"
age.times {
  puts "SPANK!"
}
