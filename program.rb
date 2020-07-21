#!/usr/bin/ruby

list = Array[ "三川一二三","田中平","山田花","井上光","中岩京介" ]
listScore = Array[ 12,14,15,13,24 ]

sum = listScore.sum
avr = sum / listScore.count
sumString = "合計は：#{sum}"
avrString = "平均は：#{avr}"


#整理する
i = 0
outputdata = ""
for data in list do
    outputdata << data
    outputdata << " " + listScore[i].to_s + "点　\n"
    i = i + 1
end
puts outputdata
# ファイルに書き出す
aFile = File.new("score.txt", "r+")
bFile = File.new("resualt.txt", "r+")
if aFile
   aFile.syswrite(outputdata)
   bFile.syswrite(sumString + "\n" +avrString)
else
   puts "Unable to open file!"
end

