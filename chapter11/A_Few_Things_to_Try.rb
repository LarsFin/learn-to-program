#!/Usr/bin/env ruby
puts "PLEASE STATE PATH FOR PHOTO NAMES TO CHANGE"
path = gets.chomp
Dir.chdir(path)
pics = Dir["*.{jpg,JPG}"]
if pics.length < 1
  puts "NO FILES FOUND"
  exit
end

temp = []
puts "WHAT WOULD YOU LIKE TO CALL THE GROUP"
groupname = gets.chomp
puts ""
print "DOWNLOADING #{pics.length} files:  "
pic_count = 1
pics.each { |name|
  print "•" #Loading bar for aesthetics!
  if pic_count < 10
    new_name = "#{groupname}#0#{pic_count}.jpg"
  else
    new_name = "#{groupname}##{pic_count}.jpg"
  end
  while true do
    if File.exist?(new_name) && name != new_name
      puts " "
      puts "A FILE CALLED #{new_name} ALREADY EXISTS! REPLACE WITH #{name} ANYWAY?"
      ans = gets.chomp
      if ans == "yes"
        puts "ARE YOU SURE? DOING SO WILL REMOVE #{new_name}"
        ans3 = gets.chomp
        if ans3 == "yes"
          File.rename(name, new_name)
          pic_count += 1
          break
        elsif ans3 == "no"
          puts "ENTER 'y' IF YOU WISH TO ADD #{name} TO END OF GROUP. OTHERWISE HIT ENTER"
          ans2 = gets.chomp
          if ans2.downcase == "y"
            pics.push(name)
          endchmo
          break
        else
          puts "PLEASE ENTER yes OR no"
        end
      elsif ans == "no"
        puts "ENTER 'y' IF YOU WISH TO ADD #{name} TO END OF GROUP. OTHERWISE HIT ENTER"
        ans2 = gets.chomp
        if ans2.downcase == "y"
          pics.push(name)
        end
        break
      else
        puts "PLEASE ENTER yes OR no"
      end
    else
      File.rename(name, new_name)
      pic_count += 1
      break
    end
  end
}
puts "" #Because we have used print beforehand we must use puts here to not put it on the same line!
puts "COMPLETE"
