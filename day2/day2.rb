input = File.readlines("input.txt").each {|line| line.strip!}		#read the file in and strip out the new line characters

#Part 1

answer = 0
answer2 = 0

input.each_with_index do |row, index|
    possible = true
    red_min = 0
    green_min = 0
    blue_min = 0
    #puts "Current index is #{index + 1}"
    line = row.split(":")
    pulls = line[1].split(";")
    #puts pulls
    pulls.each do |pull|
        dice = pull.split(",")
        #puts dice
        dice.each do |die|
            quantity = die.split(" ")
            case quantity[1]
            when "red"
                #puts "Comparing #{quantity[1]} #{quantity[0]}"
                possible = false if quantity[0].to_i > 12
                #puts possible
                red_min = quantity[0].to_i if quantity[0].to_i > red_min
            when "green"
                #puts "Comparing #{quantity[1]} #{quantity[0]}"
                possible = false if quantity[0].to_i > 13
                #puts possible
                green_min = quantity[0].to_i if quantity[0].to_i > green_min
            when "blue"
                #puts "Comparing #{quantity[1]} #{quantity[0]}"
                possible = false if quantity[0].to_i > 14
                #puts possible
                blue_min = quantity[0].to_i if quantity[0].to_i > blue_min
            end
        end
    end
    #puts "Answer is #{answer} before this game #{index + 1}"
    answer += index + 1 if possible == true
    #puts "Answer is #{answer} after this game #{index + 1}"
    answer2 += red_min * green_min * blue_min
end

puts answer
puts answer2