input = File.readlines("input.txt").each {|line| line.chomp!}		#read the file in and strip out the new line characters

#Part 1 
answer = 0

input.each do |row|
    card = row.split(':')
    numbers = card[1].split("|")
    winning_numbers = numbers[0].split(" ")
    your_numbers = numbers[1].split(" ")
    win_amount = 0
    your_numbers.each {|num| win_amount += 1 if winning_numbers.include?(num)} 
    win_amount += -1
    answer += 2 ** win_amount if win_amount >= 0
end

puts answer

#Part 2

answer = 0
cards = []
input.length.times {|x| cards << 1}

input.each_with_index do |row, index|
    card = row.split(':')
    numbers = card[1].split("|")
    winning_numbers = numbers[0].split(" ")
    your_numbers = numbers[1].split(" ")
    win_amount = 0
    your_numbers.each {|num| win_amount += 1 if winning_numbers.include?(num)} 
    cards[index].times do 
        win_amount.times do |x|
            cards[index + x + 1] += 1
        end
    end
    #puts cards
    #gets.chomp
end

cards.each {|x| answer += x}

puts answer
