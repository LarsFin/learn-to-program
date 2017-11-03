#!/Usr/bin/env ruby
file_one = "Text.txt"
test_string = gets.chomp
File.open(file_one, "w") { |x| #The "w" is for writing access otherwise there will be an error
  x.write(test_string)
}
read_string = File.read(file_one)
boo = (read_string == test_string)
puts boo
puts read_string
puts ""
#####
require "yaml"
array_ex = ["Apple", "Banana", "Cherry"]
string_ex = array_ex.to_yaml #Turns the array into a string

file_ex = "example.txt"

File.open(file_ex, "w") { |x|
  x.write(string_ex)
}

read_string = File.read(file_ex) #Same as before just reads what is in the file to prepare for use
read_array = YAML::load(read_string) #

puts read_string #Will puts the results out as a string and what is saved in the "example.txt"
puts read_array #Will puts the results out as an array
puts ""
#####
#Using \n >>> can make multiple lines within one string;
multiline = "doggo \nbarko"
puts multiline
#If you ever wish to avoid use '' instead of ""
multifail = 'doggo \nbarko'
puts multifail
#To use "" within "";
inquotion = "She said \"Yeah dude!\""
puts inquotion
#Interpolation;;;already done "#{variable}"
#####
arrayt = []
loop {
  r = (rand(5) + 6)
  arrayt = arrayt.push(r)
  break if arrayt.length > 9
}
string = arrayt.to_yaml
puts string
puts (YAML::load(string))
#####
#Defining and using methods to save and load strings;
#Defining the save method
def yamsave(obj, filename)
  File.open(filename, "w") { |x|
    x.write(obj.to_yaml)
  }
end
#Defining the load method
def yamload(filename)
  yamlstring = File.read(filename)
  YAML::load yamlstring
end
stringish = "Testing these methods"
work = "WORK.txt"
yamsave(stringish, work)
read_string = yamload(work)
puts read_string
puts (read_string == stringish)
#####
#Using Dir within ruby
#Dir is a method within ruby that searches for any files within the current directory
Dir["*.jpg"] #This will search for all jpg files (wildcard) within the current directory
#The search is case sensitive so it wont get JPG files
Dir["*.{JPG,jpg}"] #Searches for both JPG and jpg files
#To search from the parent directory;
Dir["*../*.{JPG,jpg}"]
#To search all files and subdirectories in the parent directory
Dir["**/*.{JPG,jpg}"]
#To change the current directory from within the ruby code;
#Dir.chdir ".." #path
#For renaming files the method; File.rename(name, newname) will be used
Dir.chdir("../CATS")
pics = Dir["*.jpg"]

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
  File.rename(name, new_name)
  pic_count += 1
}
puts "" #Because we have used print beforehand we must use puts here to not put it on the same line!
puts "COMPLETE"
