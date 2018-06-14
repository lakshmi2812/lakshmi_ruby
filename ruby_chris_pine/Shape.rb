require "test/unit/assertions"
include Test::Unit::Assertions
include Math

class Shape
    #The generic shape class
    attr_accessor :side
    def initialize(side1, side2=nil)
        @side1 = side1
        @side2 = side2
        puts "side1 is:#{side1} and side2 is #{side2}"
    end
end

class Circle < Shape 
    def area
        circle_area = Math::PI * @side1*@side1
        circle_area
    end
    
    def perimeter
        circle_perimeter = Math.PI *@side1*@side1
        circle_perimeter
    end
end

class Square < Shape
    def area
        square_area = @side1*@side1
        square_area
    end
    
    def perimeter
        square_perimeter = 4*@side1
        square_perimeter
    end
end

class Triangle < Shape
    def area
        triangle_area = (1.0/2)*@side1*@side2
        triangle_area
    end
    
    def perimeter
        side3 = Math.sqrt((@side1*@side1)+(@side2*@side2))
        triangle_perimeter = @side1+@side2+side3
        triangle_perimeter
    end
end


s1 = Triangle.new(7,10)
s2 = Square.new(10)
s3 = Circle.new(10)

assert s1.area == 35.0
assert_equal(100,s2.area)
puts s3.area
#
puts s1.perimeter
assert s2.perimeter == 40
puts s3.perimeter == 62.8