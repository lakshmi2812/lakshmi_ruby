#a = Array.new + [12345]
#b = String.new + 'hello'
#c = Time.new
#
#puts 'a = ' + a.to_s
#puts 'b = '+ b.to_s
#puts 'c = ' + c.to_s
#
#time = Time.new
#time2 = time + 60
#
#puts time
#puts time2
#
#time_one = Time.mktime(2000, 1, 1)
#time_two = Time.mktime(1993, 8, 28, 20, 30)
#
#puts time_one
#puts time_two

#Exercise -1 (in the middle of chapter)
#One billion seconds --- Find out when you will turn one billion seconds old!

#birthday = Time.mktime(1989, 12, 28, 10, 30, 45)
#billion_secs_old = birthday + 1000000000
#
#puts billion_secs_old

#Exercise -2
#Happy Birthday --- Ask user their date of birth, then, find out how old they are! Give them a spank on each birthday they have had!

#puts 'Which year were you born?'
#year = gets.chomp
#puts 'And month?'
#month = gets.chomp
#puts 'And date?'
#date = gets.chomp
#birthday = Time.mktime(year, month, date)
#current_time = Time.new
#age = (current_time - birthday)/(60*60*24*365)
#puts 'So, you are ' + age.to_s + ' years old right? :)'
#response = gets.chomp
#puts 'You\'re welcome! :)'
#x = birthday
#count = 0
#while x < current_time
#    x+=(60*60*24*365)
#    count+=1
#    if count < age
#        puts 'Happy Birthday ' + count.to_s
#        puts ('SPANK!')
#    end  
#end

#HASHES

#colorArray = []
#colorHash = {}
#
#colorArray[0] = 'red'
#colorArray[1] = 'green'
#colorArray[2] = 'blue'
#
#colorHash['strings'] = 'red'
#colorHash['numbers'] = 'green'
#colorHash['keywords'] = 'blue'
#
#colorArray.each do |color|
#    puts color
#end
#
#colorHash.each do |codeType, color|
#    puts (codeType + ': ' + color)
#end 
#
#weirdHash = {}
#weirdHash[12] = 'monkeys'
#weirdHash[[]] = 'emptiness'
#weirdHash[Time.new] = 'there\'s no time like the present!'
#
#weirdHash.each do |key, value|
#    puts (key.to_s + ': ' + value)
#end

#Extending Classes

#class Integer
#    def to_eng
#        if self == 5
#            english = 'five'
#        else
#            english = 'fifty-six'
#        end
#        english
#    end
#end
#
#puts 5.to_eng
#puts 98.to_eng

#Creating classes

#class Die 
#    # singular for dice that we roll to play games! :)
#    def roll
#        1+rand(6)
#    end
#end
#
#dice = [Die.new, Die.new]
#
#dice.each do |each_die|
#    puts each_die.roll
#end

#Instance variables

#class Die
#    def roll
#        @numbershowing = 1 + rand(6)
#    end
#    
#    def showing
#        @numbershowing
#    end
#end
#
#die = Die.new
##puts die.roll
#puts die.showing
#puts die.showing
#puts die.showing
#
#puts die.roll
#puts die.showing

#initialize method

#class Die
#   
#    def initialize
#        #by default, when an object of this class is created, the roll method is called
#        @numbershowing = 1
#    end
#    
#    def roll
#        @numbershowing = 1 + rand(6)
#    end
#    
#    def showing
#        @numbershowing
#    end
#    
#end
#
#die = Die.new
#puts die.showing

#Lets practice all the we have leant about classes by writing a big dragon class
#class Dragon
#    def initialize(name)
#        @name = name
#        @asleep = false
#        @stuffInBelly = 10 # He's full
#        @stuffInIntestine = 0 # He doesn't need to go
#        
#        puts @name + ' is born! :):)'
#    end
#    
#    def feed
#        puts 'You feed ' + @name + '.'
#        stuffInBelly = 10
#        passageOfTime
#    end
#    
#    def walk
#        puts 'You walk ' + @name + '.'
#        stuffInIntestine = 0
#        passageOfTime
#    end
#    
#    def putToBed
#        puts 'You put ' + @name + ' to bed'
#        @asleep = true
#        3.times do
#            if @asleep
#                passageOfTime
#            end
#            if @asleep
#                puts @name + ' snores, filling the room with smoke!'
#            end
#        end
#        if @asleep
#            @asleep = false
#            puts @name + ' wakes up slowly.'
#        end
#    end
#    
#    def toss
#        puts 'You toss ' + @name + ' up in the air'
#        puts 'He giggles, which singes your eyebrows! :D'
#        passageOfTime
#    end
#    
#    def rock
#        puts 'You rock ' + @name + ' gently'
#        @asleep = true
#        puts 'He dozes off for a while'
#        passageOfTime
#        if @asleep
#            @asleep = false
#            puts '...but wakes when you stop.'
#        end
#    end
#    
#    private
#    #The methods defined from here on will be private. 
#    #You can't call these methods
#    
#    def hungry?
#        # methods that end with a '?' usually return true or false value
#        @stuffInBelly <= 2 
#    end
#    
#    def poopy?
#        @stuffInIntestine >= 8
#    end
#    
#    def passageOfTime
#        if @stuffInBelly > 0
#            @stuffInBelly = @stuffInBelly - 1
#            @stuffInIntestine = @stuffInIntestine + 1
#        else
#            if @asleep
#                asleep = false
#                puts @name + ' wakes up suddenly!'
#            end
#            puts @name + 'is starving! In desperation, he eats YOU!!'
#            exit # This quits the program
#        end
#        
#        if @stuffInIntestine >= 10
#            @stuffInIntestine = 0
#            puts 'Whoops!' + @name + ' had an accident...don\'t worry...he just pooped! :D :D'
#        end
#        
#        if hungry?
#            if @asleep
#                @asleep = false
#                puts @name + ' wakes up suddenly!'
#            else
#                puts @name + ' \'s stomach grumbles.'
#            end
#        end
#        
#        if poopy?
#            if @asleep
#                @asleep = false
#            else
#                puts @name + ' does potty dance!'
#            end
#        end
#        
#    end
#end
#
#pet = Dragon.new('Norbert')
#pet.feed
#pet.toss
#pet.walk
#pet.putToBed
#pet.rock
#pet.putToBed
#pet.putToBed
#pet.putToBed
#pet.putToBed

#CH : 10 - BLOCKS AND PROCS

#PROCS - short name for procedures

#toast = Proc.new do
#    puts 'To Love!'
#    puts 'Cheers!'
#end
#
#toast.call
#toast.call
#toast.call

#Procs can take parameters too!

#doYouLike = Proc.new do |goodThing|
#    puts 'I really like ' + goodThing + '!'
#end
#
#doYouLike.call('froyo')
#doYouLike.call('ruby')

#You can pass Proc as an argument to a method

#def doMultipleThings(someProc)
#    puts 'Hello everyone. Please take a seat. Welcome to the discussion. So, group discussion is in progress...'
#    puts 'Lets take a short break guys..Just give me a moment guys..need to take a call..'
#    someProc.call
#    puts 'Ok, I\'m done. So, as we we discussing before the break...'
#    puts 'The discussion continues'
#end
#
#sayHello = Proc.new do
#    puts 'Hello'
#end
#
#sayBye = Proc.new do
#    puts 'GoodBye'
#end
#
#doMultipleThings(sayHello)
#doMultipleThings(sayBye)

#def doSomething(someProc)
#    if rand(2) == 0
#        someProc.call
#    end
#end
#
#def doSomethingTwice(someProc)
#    2.times do
#        someProc.call
#    end
#end
#
#wink_please = Proc.new do
#    puts 'wink'
#end
#
#glance_please = Proc.new do
#    puts 'glance'
#end
#
#doSomething(wink_please)
#doSomethingTwice(glance_please)
#doSomethingTwice(wink_please)

#def doUntilFalse(firstInput, someProc)
#    input = firstInput
#    output = firstInput
#    
#    while output
#        input = output
#        output = someProc.call(input)
#    end
#    input
#end
#
#buildArrayOfSquares = Proc.new do |array|
#    lastNumber = array.last
#    if array.last <= 0
#        false
#    else
#    array.pop
#    array.push lastNumber*lastNumber
#    array.push lastNumber-1
#    end
#end
#
#alwaysFalse = Proc.new do |justIgnore|
#    false
#end
#
#puts doUntilFalse([5], buildArrayOfSquares).inspect
#puts doUntilFalse('I\'m writing this at 3:00 am; someone knock me out!', alwaysFalse)

#def compose(proc1, proc2)
#    Proc.new do |x|
#        proc2.call(proc1.call(x))
#    end
#end
#
#doubleIt = Proc.new do |x|
#    x+x
#end
#
#squareIt = Proc.new do |x|
#    x*x
#end
#
#
#
#double_then_square = compose(doubleIt, squareIt)
#square_then_double = compose(squareIt, doubleIt)
#
#puts double_then_square.call(5)
#puts square_then_double.call(5)

#class Array
#    #We are extending the Array class
#    def eachEven(&wasABlock_nowAProc)
#        isEven = true
#        
#        self.each do |object|
#            if isEven
#                wasABlock_nowAProc.call(object)
#            end
#            isEven = (not isEven)
#        end
#        
#    end
#end
#
#['apple', 'bad apple', 'cherry', 'durian'].eachEven do |fruit|
#    puts 'I like ' + fruit + ' pie, don\'t you?'
#end
#
#[1,2,3,4,5].eachEven do |num|
#    puts num.to_s + ' is NOT an even number'
#end

#def profile(descriptionOfBlock, &block)
#    startTime = Time.now
#    
#    block.call
#    
#    duration = Time.now - startTime
#    
#    puts descriptionOfBlock + duration.to_s + ' seconds'
#end
#
#profile '25000 doublings'  do
#    number = 1
#    25000.times do
#        number = number + number
#    end
#    puts number.to_s.length.to_s + ' digits'
#end
#
#profile 'count to a million' do 
#    number = 0
#    1000000.times do
#        number = number + 1
#    end
#end

##PRACTICE

#post = Proc.new do |x|
#    puts x
#end
#
#post.call 2
#
#def profile (desc, &block)
#    startTime = Time.now
#    block.call
#    endTime = Time.now 
#end
#
#profile 'count' do
#    "hello"
#end

#class Die
#    def roll
#        @number_showing = 1 + rand(6)
#    end
#    def showing
#        @number_showing
#    end
#end
#
#die = Die.new
#puts die.roll
#puts die.showing

#def articles(title)
#    #omit = ["a", "an", "the", "of", "or", "for", "is", "was", "at", "and", "in"]
#    vowels = ["a", "e", "i", "o", "u", "t"]
#    title_arr = title.split
#    new_title_arr = []
#    new_title = ""
#    x = 0
#    while x < title_arr.length
#        if x == 0
#            new_title_arr.push(title_arr[x].capitalize)
#        else
#            if vowels.include? title_arr[x][0]
#                new_title_arr.push(title_arr[x])
#            else
#                new_title_arr.push(title_arr[x].capitalize)
#            end
#        end
#        x+=1
#    end
#    new_title = new_title_arr.join(' ')
#    new_title
#end
#
#puts articles("war and peace")
#puts articles("Love in the Time of Cholera")


#The well grounded Rubyist --- CH-3 practice problems
#==================================================

#
#class Ticket
#    def event
#        "Cannot be specified yet.."
#    end
#end
#
#ticket = Ticket.new
#puts ticket.event

#Instance variable maintains its value between method calls
#------------------------------------------------------------

#class Person
#    def set_name(string)
#        puts "Setting the name of the person..."
#        @name = string
#    end
#    
#    def get_name
#        puts "Retrieving the name of the person..."
#        @name
#    end
#end
#
#
#joey = Person.new
#joey.set_name("Joey")
#puts joey.get_name

#Initialize method to initialize the state of an object whenever a new object of that class is created
#class Ticket
#    def initialize
#        puts "Creating a new ticket..."
#    end
#end
#
#ticket = Ticket.new

#class Ticket
#    def initialize(venue, date)
#        @venue = venue
#        @date = date
#    end
#    
#    def venue
#        @venue
#    end
#    
#    def date
#        @date
#    end
#end
#
#tkt1 = Ticket.new("SAP Center", "April 19, 2017")
#tkt2 = Ticket.new("Levis Stadium", "May 5, 2017")
#puts "We have created two tickets." 
#puts "One is for event at #{tkt1.venue} on #{tkt1.date}"
#puts "The other is for an event at #{tkt2.venue} on #{tkt2.date}"
#
# 

#class Person
#    #attr_accessor :name
#    def name=(name)
#        puts "Setting the name of a person.."
#        @name = name
#    end
#    
#    def name
#        puts "My name is " + @name
#        @name
#    end
#end
#
#
#p = Person.new
#p.name = "Lakshmi"
#puts p.name


#Class methods vs Instance methods
#==================================

#class Invoice
#    def self.print_out
#        puts "Printing out..."
#    end
#    
#    def convert_to_pdf
#        puts "Converting to pdf..."
#    end
#end
#
#Invoice.print_out
#
#i = Invoice.new
#i.convert_to_pdf

#Another example of class methods
#---------------------------------

#class Temperature
#    def Temperature.ftoc(temp)
#        c = (temp - 32) * (5/9.0)
#        return c
#    end
#    
#    def Temperature.ctof(temp)
#        f = (temp * (9/5.0)) + 32 
#        return f
#    end
#end
#
#puts Temperature.ftoc(100)
#puts Temperature.ctof(100)

#class Publisher
#    attr_accessor :publisher
#end
#
#class Magazine < Publisher
#    attr_accessor :editor
#end
#
#mag = Magazine.new
#mag.editor = "David O. Henry"
#mag.publisher = "Michael H. Williams"
#puts "Mag is published by #{mag.publisher}, and edited by #{mag.editor}"
##puts Magazine.superclass
##puts Magazine.superclass.superclass

#Options Hash
#-------------

#def foo(a,b,opts = {})
#    puts options
#    a+b
#end
#
#foo(2,3)

#Hash
#-----

#state_hash = {"Ohio" => "OH","Connecticut" => "CT","Washington" => "WA"}
#
#print "Enter the name of a state: "
#state = gets.chomp
#abbr = state_hash[state]
#puts "The abbreviation is #{abbr}."
#

#Methods that take hashes as arguments

#def login_page(hash = {})
#    puts hash[:kashyap]
#end
#
#login_page(:kashyap=>'Success!')


#def m(a:0, b:0)
#    puts a,b
#end
#
#m(a:1,b:2)

#def m(a:0, b:0)
#    puts a,b
#end
#
#m(:a=>1,:b=>2)


#YIELD
#=====

#def test
#    yield
#end
#
#test{puts "hello world!"}
#
#

#def test
#    yield(5)
#end
#
#test do
#    |n| n+=1
#    puts n
#end

#class Person
#    def initialize(opts = {})
#        @options = opts
#    end
#    
#    def my_age
#        return @options[:age] if @options.has_key?(:age)
#    end
#end
#    
#p1 = Person.new(:age=>27)
#p2 = Person.new
#
#puts p1.my_age
#puts p2.my_age
#


#class Animal
#    attr_accessor :name
#    def initialize(name)
#        @name = name
#    end
#end
#
#class GoodDog < Animal
#    def initialize(color)
#        super
#        @color = color        
#        puts "Name is #{name} and color is #{color}"
#    end
#end
#
#GoodDog.new("Fluffy")

#HASHES
#======

#diff_hash = Hash[ [[1,2],[3,4]] ] 
#puts diff_hash
#
#h = {}
#h[:c] = 50
#puts h

#Instance Variables
#class Person
#    attr_accessor :name, :age
#    def initialize(name)
#        @name = name
#    end
#end
#
#david = Person.new("David")
#david.age = 29
#puts "The new person in our team is #{david.name} and his age is #{david.age}"

#HASHES
#=======

#state_hash = {"Colorado"=>"CT", "Virginia"=>"VA", "Texas"=>"TX"}
#state_hash_keys = Array.new
#state_hash_keys = state_hash.keys
#puts state_hash_keys[0]

#class About_Hashes
#    attr_accessor :entries, :keyword
#    def initialize(opts={})
#        myhash = {}
#        if opts.is_a?(Hash) == true
#            @entries = opts
#        else
#            myhash.store(opts,nil)
#            @entries = myhash
#        end
#        puts @entries
#    end
#end
#
#About_Hashes.new("fish")
#About_Hashes.new("fish"=>"aquatic")

#class Dictionary < Hash
#    attr_accessor :entries
#    def initialize
#        @entries = {}
#    end
#    
#    def add(opts = {})
#        @entries = opts
#    end
#end
#
#
#@d = Dictionary.new
#puts @d.entries
#puts @d.include?("fish")


#h = {"HYD"=>"Hyderabad", "BLORE"=>"Bangalore", "MUM"=>"Mumbai"}
#keywords = h.keys.sort
#keywords.each do |x|
#    #puts "[x] \"#{@h[x]}\" "
#    puts "[#{x}] \"#{h[x]}\" "
#end
#

#class Array
#    def square!
#        self.map{|x| x*x}
#    end
#end
#
#array = [1,2,3,4]
#array.square!
#puts array
#str = "1 2 3 * +"
#str_arr = str.split(' ')
#str_arr.each do |x|
#    if x == "+"
#        puts "It is a plus"
#    end
#end

#letter = "B"
#if letter.capitalize == letter
#    puts "Success!"
#else
#    puts "Failed"
#end

#def encode(message, key)
#  output_arr = []
#  alpha_dict = {'a'=>1,'b'=>2,'c'=>3,'d'=>4,'e'=>5,'f'=>6,'g'=>7,'h'=>8,'i'=>9,
#  'j'=>10,'k'=>11,'l'=>12,'m'=>13,'n'=>14,'o'=>15,'p'=>16,'q'=>17,'r'=>18,'s'=>19,
#  't'=>20,'u'=>21,'v'=>22,'w'=>23,'x'=>24,'y'=>25,'z'=>26}
#  message_arr = message.split("")
#  message_arr.each do |x|
#    if alpha_dict.has_key?(x)
#      output_arr.push(alpha_dict[x])
#    end
#  end
#  key_arr = key.to_s.split("")
#  key_arr.map!{|x| x.to_i}
#  i = 0
#  j = 0
#  while i < output_arr.size
#      if j < key_arr.size
#          output_arr[i] = output_arr[i] + key_arr[j]
#      else
#          j = 0
#          output_arr[i] = output_arr[i] + key_arr[j]
#      end
#      j+=1
#      i+=1
#  end
#  output_arr
#end
#
#print(encode("scout", 1939)== [20, 12, 18, 30, 21])



#def alphabet_war(fight)
#  left_dict = {"w"=>4, "p"=>3, "b"=>2, "s"=>1}
#  right_dict = {"m"=>4, "q"=>3, "d"=>2, "z"=>1}
#  fight_arr = fight.split("")
#  right_side = 0
#  left_side = 0
#  output_str = ""
#  x = 0
#  while x < fight_arr.size
#    current = fight_arr[x]
#    if left_dict.has_key?(current)
#        left_side += left_dict[current]
#    elsif right_dict.has_key?(current)
#        right_side += right_dict[current]
#    end
#    x+=1
#  end
#  if right_side > left_side
#    output_str = "Right side wins!"
#  elsif left_side > right_side
#    output_str = "Left side wins!"
#  else
#    output_str = "Let's fight again!"
#  end
#  output_str
#end
#
#
#puts(alphabet_war("z")== "Right side wins!")
#puts(alphabet_war("zdqmwpbs")== "Let's fight again!")
#puts(alphabet_war("wq")== "Left side wins!")
#puts(alphabet_war("zzzzs")== "Right side wins!")
#puts(alphabet_war("wwwwww")== "Left side wins!")


#TWO SUM ICLOUD9 APPACADEMY
#===========================
# Write a method that takes an array of numbers. If a pair of numbers
# in the array sums to zero, return the positions of those two numbers.
# If no pair of numbers sums to zero, return `nil`.
#
# Difficulty: medium.

#def two_sum(nums)
#    x = 0
#    indices = nil
#    while x < nums.size
#        sum_2 = nums[x]
#        y = x+1
#        while y < nums.size
#            if nums[x] + nums[y] == 0
#              indices = [x, y]
#              break
#            end
#            y+=1
#        end
#        x+=1
#    end
#    indices
#end
#
#puts(two_sum([1,3,5,-3]))
#puts(two_sum([1, 3, 5, -3]) == [1, 3])
#puts(two_sum([1, 3, 5]) == nil)
#







