#Part 1 
input = File.readlines("input.txt").each {|line| line.chomp!}		#read the file in and strip out the new line characters
input.reject! {|i| i.empty?}  