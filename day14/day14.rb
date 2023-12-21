#Part 1 
input = File.readlines("input.txt").each {|line| line.chomp!}		#read the file in and strip out the new line characters
input.reject! {|i| i.empty?}  


empty_spots = true

while empty_spots == true
    available_spaces = []
    empty_spots = false
    input.each_with_index do |line, row_num|
        temp = line.split('')
        temp.each_with_index do |char, index|
            if char == "O" && available_spaces.include?(index)
                input[row_num - 1][index] = "O" 
                input[row_num][index] = "."
                empty_spots = true
            end
        end
        available_spaces = []
        temp = line.split('')
        temp.each_with_index do |char, index|
            if char == "."
                available_spaces << index
            end
        end
    end
end

total_load = 0
input.each_with_index do |row, row_num|
    temp = row.split('')
    temp.each {|char| total_load += input.length - row_num if char == "O"}
end

puts total_load
