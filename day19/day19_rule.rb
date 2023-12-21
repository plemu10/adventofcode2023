def process_rule(rule, part, rules)
    rules[rule].each do |r|
        puts "Looking at rule #{r}"
        case r[0]
        when "x"
            puts "Need to compare X, X is #{part.x}"
        when "m"
            puts "Need to compare M, M is #{part.m}"
        when "a"
            puts "Need to compare A, A is #{part.a}"
        when "s"
            puts "Need to compare S, S is #{part.s}"
            case r[1]
            when "<"
                temp = r.split("<")
                temp1 = temp[1].split(":")
                if part.s < temp1[0].to_i
                    puts "#{part.s} is less than #{temp1[0]}, move onto rule #{temp1[1]}"
                    #call process_rule using the found rule
                else
                    puts "#{part.s} is greater than #{temp1[0]}, move onto next comparison"
                    next    #move onto next comparison
                end
            when ">"
                temp = r.split(">")
                temp1 = temp[1].split(":")
                if part.s > temp1[0].to_i
                    puts "#{part.s} is greater than #{temp1[0]}, move onto rule #{temp1[1]}"
                    #call process_rule using the found rule
                else
                    puts "#{part.s} is less than #{temp1[0]}, move onto next comparison"
                    next    #move onto the next comparison
                end
            else
                puts "Move directly to this rule"
            end         
        end
    end
    return false
end

def compare(operator)
    
end