input = File.readlines("test.txt").each {|line| line.chomp!}		#read the file in and strip out the new line characters

#Part 1 
answer = 0

temp = input[0].split(":")
seeds = temp[1].split(" ")
almanac = [[],[],[],[],[],[],[]]

input.each_with_index do |row, index|
    temp = row.split(" ")
    puts "New section #{temp[0]}" if temp[1] == "map:"
end