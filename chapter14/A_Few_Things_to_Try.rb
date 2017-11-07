#!/Usr/bin/env ruby
def profile(description, &block)
  profiling_on = true
  if profiling_on == true
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts " "
    puts "#{description} :: #{duration} seconds"
  else
    block.call
  end
end
profile "test00" do
  450.times { print "-test"}
end
puts " "
def grandfatherclock(block)
  n = Time.new.hour
  n -= 12 if n > 12
  n.times { block.call }
end
dong = Proc.new {
  puts "DONG!!"
}
grandfatherclock(dong)
puts " "
#####
$rightshift = 0
def log(description, &block)
  spacing = " " * $rightshift
  puts "#{spacing}Beginning '#{description}' ..."
  $rightshift += 2
  block.call
  puts "#{spacing}...'#{description}' finished, returning;  #{$output}"
  $rightshift -= 2
end
log "outer block" do
  log "innerblock1" do
    log "microblock" do
      $output = "lots of love"
    end
  $output = 3 + 2
  end
  log "innerblock2" do
    $output = "I like Thai food!"
  end
  $output = 3 == 2
end
