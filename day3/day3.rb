input = File.readlines("test.txt").each {|line| line.strip!}		#read the file in and strip out the new line characters

#Part 1

answer = 0

input.each_with_index do |line, line_index|
    row = line.split('')
    row.each_with_index do |character, character_index|
        if character.match?(/[[:digit:]]/) || character == "."
            #puts "Do nothing"
        else
            #puts "Symbol found #{character} so do stuff probably"
            #Check Up
            temp = input[line_index - 1].split('')
            #puts temp[character_index]
            if temp[character_index].match?(/[[:digit:]]/)
                #find a number and then add it to the answer
                puts "There is a number above"
            end
            #Check Up-Right
            temp = input[line_index - 1].split('')
            #puts temp[character_index]
            if temp[character_index + 1].match?(/[[:digit:]]/)
                #find a number and then add it to the answer
                puts "There is a number to the upper right"
            end

            #Check Right
            if character[character_index + 1].match?(/[[:digit:]]/)
                #find a number and then add it to the answer
                puts "There is a number to the upper right"
            end

            #Check Right-Down
            temp = input[line_index + 1].split('')
            #puts temp[character_index]
            if temp[character_index + 1].match?(/[[:digit:]]/)
                #find a number and then add it to the answer
                puts "There is a number to the bottom right"
            end

            #Check Down
            temp = input[line_index + 1].split('')
            #puts temp[character_index]
            if temp[character_index].match?(/[[:digit:]]/)
                #find a number and then add it to the answer
                puts "There is a number to the bottom"
            end

            #Check Down-Left
            temp = input[line_index + 1].split('')
            #puts temp[character_index]
            if temp[character_index - 1].match?(/[[:digit:]]/)
                #find a number and then add it to the answer
                puts "There is a number to the bottom left"
            end

            #Check Left
            if character[character_index + 1].match?(/[[:digit:]]/)
                #find a number and then add it to the answer
                puts "There is a number to the left"
            end

            #Check Left-Up
            temp = input[line_index - 1].split('')
            #puts temp[character_index]
            if temp[character_index + 1].match?(/[[:digit:]]/)
                #find a number and then add it to the answer
                puts "There is a number to the upper left"
            end

        end
    end
end
