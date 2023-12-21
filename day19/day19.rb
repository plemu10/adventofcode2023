require_relative 'day19_class.rb'
require_relative 'day19_rule.rb'

#Part 1 
input = File.readlines("test.txt").each {|line| line.chomp!}		#read the file in and strip out the new line characters
input.reject! {|i| i.empty?}                                        #removes null lines from array

accepted = []
rules = {}
parts = []

input.each do |line|
    if line[0] != "{"
        temp = line.split("{")
        temp[1][temp[1].length - 1] = ''
        rules[temp[0]] = temp[1].split(",")
    end

    if line[0] == "{"
        line[0] = ''
        line[line.length - 1] = ''

        temp = line.split(",")

        x = temp[0].split("=").last.to_i
        m = temp[1].split("=").last.to_i
        a = temp[2].split("=").last.to_i
        s = temp[3].split("=").last.to_i

        parts << Part.new(x, m, a, s)
    end
end

parts.each do |part|
    acceptance = process_rule("in", part, rules)
end


