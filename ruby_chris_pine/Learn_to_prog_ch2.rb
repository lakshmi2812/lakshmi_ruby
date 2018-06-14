#my_string = '...you can say that again...'
#puts(my_string)
#puts(my_string)
#
#name = "Patricia Rosanna Jessica Mildred Oppenheimer"
#puts "My name is " + name
#puts "Wow! " + name + " is a really long name!"
#
#composer = "Mozart"
#puts composer + " was \'da bomb\' in his day"
#composer = "Bethovan"
#puts "But, I prefer " + composer
#
#var = 'just another' + ' string'
#puts var
#
#var = 15
#puts var
#
#var1 = 8
#var2 = var1
#
#puts var1
#puts var2
#puts ''
#
#var1 = 'eight'
#puts var1
#puts var2

#CHAPTER 4: Mixing up
#=====================

#var1 = 1
#var2 = '2'
#
#puts var1.to_s + var2
#puts var1 + var2.to_i
#
#puts '15'.to_f
#puts '99.9999'.to_f
#puts '99.9999'.to_i
#puts ''
#puts '5 is my favorite number'.to_i
#puts 'Who asked you about 5 or whatever'.to_i
#puts 'Your momma did'.to_f
#puts ''
#puts 'stringy'.to_s
#puts 3.to_i

#puts 20
#puts 20.to_s
#puts '20'
#
#puts 20+1
#puts gets
#
#puts 'Hello there, and what\'s your name?'
#name = gets.chomp
#puts 'Your name is ' + name + '? What a nice  name!'
#puts 'Pleased to meet you ' + name + '. :)'

#puts 'Hello there and what\'s your first name?: '
#first_name = gets.chomp
#puts 'And your middle name: '
#middle_name = gets.chomp
#puts 'And your last name?: '
#last_name = gets.chomp
#puts 'Your name is ' + first_name + ' ' + middle_name + ' ' + last_name + '? That\'s a nice name!'
#puts 'Pleased to meet you ' + first_name + ' ' + middle_name + ' ' + last_name + '. :)'

#puts 'Please enter your favorite number and see the result!: '
#num = gets.to_i
#result = num + 1
#puts 'The result is a bigger and better favorite number: ' + result.to_s + ' :)'

#methods_so_far = []
#x = 0
#while x < 10
#    puts('Enter a method name: ')
#    user_ip = gets.chomp
#    methods_so_far.push(user_ip)
#    x+=1
#end
# 
#i = 0
#puts('The methods you have entered are: ')
#while i < methods_so_far.length
#    puts methods_so_far[i]
#    i+=1
#end
    
#var1 = 'stop'
#var2 = 'stressed'
#var3 = 'Can you pronounce this sentence backwards?'
#
#puts var1.reverse
#puts var2.reverse
#puts var3.reverse
#
#puts var1
#puts var2
#puts var3

#puts('What\'s your full name?')
#full_name = gets.chomp
#puts 'Did you know there are ' + full_name.length.to_s + ' characters in your ' + full_name + '?'

#puts 'Hey there, what\'s your first name?'
#first = gets.chomp
#first_length = first.length
#puts 'And your middle name?'
#middle = gets.chomp
#middle_length = middle.length
#puts 'And your last name?'
#last = gets.chomp
#last_length = last.length
#full_length = first_length+middle_length+last_length
#puts 'Did you know that there are ' + full_length.to_s + ' characters in your full name? :)'
#

#letters = 'aAbBcCdDeE'
#puts letters.upcase
#puts letters.downcase
#puts letters.capitalize
#puts ' a'.capitalize
#puts letters

#line_width = 50
#puts 'Old mother Hubbard'.center(line_width)
#puts 'Sat in her cupboard'.center(line_width)

#line_width = 40
#str = '-->text<--'
#puts str.ljust(line_width)
#puts str.rjust(line_width)
#puts str.center(line_width)
#puts(str.ljust(line_width) + str.rjust(line_width))

#puts('Whaaaddd the hell do you want?? grrrr!!!')
#answer = gets.chomp
#puts 'Whaaadd the hell do u mean ' + answer + ' ?! You are fired!'

#line_width = 60
#puts 'Table Of Contents'.center(line_width)
#line_width1 = 10
#line_width2 = 40
#puts 'Chapter 1:'.rjust(line_width1) + ' Numbers' + 'page 1'.rjust(line_width2)
#
#puts 'Chapter 2:'.rjust(line_width1) + 'Letters' + 'page 72'.rjust(line_width2)
#
#puts 'Chapter 3:'.rjust(line_width1) + 'Variables' + 'page 118'.rjust(line_width2)

#puts 5**2
#puts 5**0.5
#puts 9/3
#puts 9%3
#puts 365%7

#puts (5-2).abs
#puts (2-5).abs

#srand 1776
#puts(rand(100))
#puts(rand(100))
#puts(rand(100))
#puts(rand(100))
#puts(rand(100))
#puts''
#srand 1776
#puts(rand(100))
#puts(rand(100))
#puts(rand(100))
#puts(rand(100))
#puts(rand(100))

puts(Math::PI)
puts(Math::E)
puts(Math.cos(Math::PI/4))
puts(Math.tan(Math::PI/3))
puts(Math.log(Math::E**6))
puts((1+Math.sqrt(5))/2)











