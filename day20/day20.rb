#Part 1 
input = File.readlines("test.txt").each {|line| line.chomp!}		#read the file in and strip out the new line characters
input.reject! {|i| i.empty?}                                        #removes null lines from array

