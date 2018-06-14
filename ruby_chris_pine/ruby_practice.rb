#Objects - Ch 2 in "The well grounded Rubyist"
obj = Object.new

#The methods of the object obj that we are defining now are all called Singleton methods. They are all all being defined for one specific #object. Other objects cannot share them. 

def obj.talk
    puts("Hi..! I am an object :)")
    puts("Do you object?")
end

obj.talk

def obj.c2f(c)
    c * 9.0/5 + 32
end

puts obj.c2f(100)

ticket = Object.new

def ticket.date
    "01/02/03"
end

def ticket.venue
    "Town Hall"
end

def ticket.performer
    "Mark Twain"
end

def ticket.seat
    "Second Balcony, Row J, Seat 12"
end

def ticket.price
    5.50
end


puts("The price of tkt is: ")
puts(ticket.price)

puts("The ticket is for : #{ticket.date}, at #{ticket.venue}")
puts("The The performer is: #{ticket.performer}")
puts("The seat is #{ticket.seat} and the cost is #{"%.2f." %ticket.price}")


#Classes - CH:3 - The Well grounded Rubyist

class Ticket
    #instance method
    def event
        puts "This is an event"
    end
end

#An instance method is defined in the class definition and can be shared by any instance(object) of the class.
ticket = Ticket.new #ticket is an (object)instance of class Ticket

ticket.event

#Overriding methods
#--------------------
#We know that when we are defining the method twice in a class definition, the second(latest) definition prevails!

#Reopening classes - You can reopen a class to add a new method to it. But, breaking a class definition like this should not be done just
#Ex:
#class XYZ
#    def x
#    end
#end
#
#class XYZ
#    def y
#    end
#end
#for fun. There should be a good reason for it!

#Instance variables
#-------------------

#Instance variables help the to store the state of any object of the class.
#Instance variables are defined in the class definition, just like instance methods
#Instance variable name starts with an @ sign which makes them easily recognizable

class Person
    def set_name(string)
        puts "Setting person's name..."
        @name = string
    end
    
    def get_name
        puts "Returning the name of the person"
        @name
    end
end

person = Person.new
person.set_name("Koushik")
puts person.get_name


def new_block 
    if block_given?
        puts "Yes, a block is given!"
        yield(10)
    else
        puts "No block has been given!"
    end
end

new_block do |x|
    puts x
end
new_block{puts "Hi!"}

def block_new
    num = yield(1)
    puts num
end

block_new do |x|
    x+10
end

