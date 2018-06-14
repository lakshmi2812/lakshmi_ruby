class House
    def initialize(room_count,room_size)
        @room_count = room_count
        @room_size = room_size
    end
    
    def color()
        @color
    end
    
    def color=(c)
        @color = c
    end
    
    def area()
        area = (@room_size**2) * @room_count
        puts("The area of this house is #{area} square feet")
        area
    end
    
    def ring_bell(visitor)
        puts("Welcome to our home, #{visitor}! We have #{@room_count} rooms in our house")
    end
end

house1 = House.new(4,200)
house1.area
house1.color = "blue"
puts house1.color
house1.ring_bell("Kashyap")
