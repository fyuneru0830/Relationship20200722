#!/usr/bin/ruby

list = Array["三川一二三","田中平","山田花","井上光","中岩京介"]
puts "#{list}"
 
aFile = File.new("input.txt", "r+")
if aFile
   aFile.syswrite("ABCDEF")
else
   puts "Unable to open file!"
end

