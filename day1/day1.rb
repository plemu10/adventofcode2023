input = File.readlines("input.txt").each {|line| line.strip!}		#read the file in and strip out the new line characters

#Part 2

input.each do |row|
    row.gsub! 'one', 'one1one'
    row.gsub! 'two', 'two2two'
    row.gsub! 'three', 'three3three'
    row.gsub! 'four', 'four4four'
    row.gsub! 'five', 'five5five'
    row.gsub! 'six', 'six6six'
    row.gsub! 'seven', 'seven7seven'
    row.gsub! 'eight', 'eight8eight'
    row.gsub! 'nine', 'nine9nine'    
end

#Part 1 

values = [] #empty array to hold the calibration numbers

input.each {|row| values << row.tr('^0-9', '')} #for each row of input, strip out all the non digits and add that line to a new list

answer = 0     #this will hold the answer
values.each do |row|    #for each string in the list values
    temp = "#{row[0]}" + "#{row[row.length - 1]}" #temp is the first character in the string combined with the last character in the string
    answer += temp.to_i #interpret the string as integer and add it to the answer
end

puts answer
