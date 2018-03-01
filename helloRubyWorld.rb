# helloRubyWorld.rb

print "Hello World\n"

3.times {print "Hello Ruby three times! "}

print "\n"

1.upto(9){|x| print x }

print "\n"

name = "Eric"

print "Hello #{name}! This was interpolated."

print "\n"

puts "Test sort vs. sort! - the former returns a new copy, the latter modifies in place"

myArray = [4,8,2,4,1,10,5]

p myArray

puts

p myArray.sort

puts

p myArray

puts

p myArray.sort!

puts

p myArray

puts

