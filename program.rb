#!/usr/bin/ruby

list = Array["",2,3,4,5]
puts "#{list}"
 
aFile = File.new("input.txt", "r+")
if aFile
   aFile.syswrite("ABCDEF")
else
   puts "Unable to open file!"
end

