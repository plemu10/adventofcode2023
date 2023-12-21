input = File.readlines("input.txt").each {|line| line.strip!}		#read the file in and strip out the new line characters

#Part 1

answer = 0
gear_ratio = 0

input.each_with_index do |line, line_index|
    puts "Currently on line #{line_index + 1}~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    row = line.split('')
    row.each_with_index do |character, character_index|
        found_number = []
        if character.match?(/[[:digit:]]/) || character == "."
            #puts "Do nothing"
        else
            puts "Symbol found #{character} so do stuff probably"
            #Check Up
            temp = input[line_index - 1].split('')
            #puts temp[character_index]
            if temp[character_index].match?(/[[:digit:]]/)
                #find a number and then add it to the answer
                puts "There is a number above"
                counter = character_index
                while temp[counter].match?(/[[:digit:]]/)
                   counter += -1 
                end
                counter += 1
                number = ""
                while temp[counter].match?(/[[:digit:]]/)
                    number = number + temp[counter]
                    counter += 1
                end
                unless found_number.include?(number)
                    puts "The number is #{number}"
                    found_number << number
                    answer += number.to_i
                end
            end
            #Check Up-Right
            temp = input[line_index - 1].split('')
            #puts temp[character_index]
            if temp[character_index + 1].match?(/[[:digit:]]/)
                #find a number and then add it to the answer
                puts "There is a number to the upper right"
                counter = character_index + 1
                while temp[counter].match?(/[[:digit:]]/)
                   counter += -1 
                end
                counter += 1
                number = ""
                while temp[counter].match?(/[[:digit:]]/)
                    number = number + temp[counter]
                    counter += 1
                end
                unless found_number.include?(number)
                    puts "The number is #{number}"
                    found_number << number
                    answer += number.to_i
                end
            end

            #Check Right
            if row[character_index + 1].match?(/[[:digit:]]/)
                #find a number and then add it to the answer
                puts "There is a number to the right"
                counter = character_index + 1
                while row[counter].match?(/[[:digit:]]/)
                   counter += -1 
                end
                counter += 1
                number = ""
                while row[counter].match?(/[[:digit:]]/)
                    number = number + row[counter]
                    counter += 1
                end
                unless found_number.include?(number)
                    puts "The number is #{number}"
                    found_number << number
                    answer += number.to_i
                end
            end

            #Check Right-Down
            temp = input[line_index + 1].split('')
            #puts temp[character_index]
            if temp[character_index + 1].match?(/[[:digit:]]/)
                #find a number and then add it to the answer
                puts "There is a number to the bottom right"
                counter = character_index + 1
                while temp[counter].match?(/[[:digit:]]/)
                   counter += -1 
                end
                counter += 1
                number = ""
                while temp[counter].match?(/[[:digit:]]/)
                    number = number + temp[counter]
                    counter += 1
                end
                unless found_number.include?(number)
                    puts "The number is #{number}"
                    found_number << number
                    answer += number.to_i
                end
            end

            #Check Down
            temp = input[line_index + 1].split('')
            #puts temp[character_index]
            if temp[character_index].match?(/[[:digit:]]/)
                #find a number and then add it to the answer
                puts "There is a number to the bottom"
                counter = character_index
                while temp[counter].match?(/[[:digit:]]/)
                   counter += -1 
                end
                counter += 1
                number = ""
                while temp[counter].match?(/[[:digit:]]/)
                    number = number + temp[counter]
                    counter += 1
                end
                unless found_number.include?(number)
                    puts "The number is #{number}"
                    found_number << number
                    answer += number.to_i
                end
            end

            #Check Down-Left
            temp = input[line_index + 1].split('')
            #puts temp[character_index]
            if temp[character_index - 1].match?(/[[:digit:]]/)
                #find a number and then add it to the answer
                puts "There is a number to the bottom left"
                counter = character_index - 1
                while temp[counter].match?(/[[:digit:]]/)
                   counter += -1 
                end
                counter += 1
                number = ""
                while temp[counter].match?(/[[:digit:]]/)
                    number = number + temp[counter]
                    counter += 1
                end
                unless found_number.include?(number)
                    puts "The number is #{number}"
                    found_number << number
                    answer += number.to_i
                end
            end

            #Check Left
            if row[character_index - 1].match?(/[[:digit:]]/)
                #find a number and then add it to the answer
                puts "There is a number to the left"
                counter = character_index - 1
                while row[counter].match?(/[[:digit:]]/)
                   counter += -1 
                end
                counter += 1
                number = ""
                while row[counter].match?(/[[:digit:]]/)
                    number = number + row[counter]
                    counter += 1
                end
                unless found_number.include?(number)
                    puts "The number is #{number}"
                    found_number << number
                    answer += number.to_i
                end
            end

            #Check Left-Up
            temp = input[line_index - 1].split('')
            #puts temp[character_index]
            if temp[character_index - 1].match?(/[[:digit:]]/)
                #find a number and then add it to the answer
                puts "There is a number to the upper left"
                counter = character_index - 1
                while temp[counter].match?(/[[:digit:]]/)
                   counter += -1 
                end
                counter += 1
                number = ""
                while temp[counter].match?(/[[:digit:]]/)
                    number = number + temp[counter]
                    counter += 1
                end
                unless found_number.include?(number)
                    puts "The number is #{number}"
                    found_number << number
                    answer += number.to_i
                end
            end
            if character == "*" && found_number.length == 2
                gear_ratio += found_number[0].to_i * found_number[1].to_i
            end
        end
    end
end

puts answer
puts gear_ratio
