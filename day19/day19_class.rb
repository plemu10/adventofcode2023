class Part
    attr_accessor :x, :m, :a, :s, :processed

    def initialize (part_x, part_m, part_a, part_s)
        @x = part_x
        @m = part_m
        @a = part_a
        @s = part_s
        @processed = []
    end
end