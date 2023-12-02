input = File.readlines("input.txt").each {|line| line.strip!}		#read the file in and strip out the new line characters

#Part 1

answer = 0

input.each_with_index do |row, index|
    possible = true
    puts "Current index is #{index + 1}"
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
                puts "Comparing #{quantity[1]} #{quantity[0]}"
                possible = false if quantity[0].to_i > 12
                puts possible
            when "green"
                puts "Comparing #{quantity[1]} #{quantity[0]}"
                possible = false if quantity[0].to_i > 13
                puts possible
            when "blue"
                puts "Comparing #{quantity[1]} #{quantity[0]}"
                possible = false if quantity[0].to_i > 14
                puts possible
            end
        end
    end
    puts "Answer is #{answer} before this game #{index + 1}"
    answer += index + 1 if possible == true
    puts "Answer is #{answer} after this game #{index + 1}"
end

puts answer