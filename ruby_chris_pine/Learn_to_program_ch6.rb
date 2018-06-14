#FLOW CONTROL:
#=============

#puts 1>2
#puts 2>1

#puts 5 >= 5
#puts 5 <=4

#puts 2 == 1
#puts 2 != 1

#puts 'cat' < 'dog'
#puts 'zebra' > 'wolf'
#
#puts 'Z' < 'z'

#puts('Hello, what\'s your name?')
#name = gets.chomp
#puts('Hello ' + name + '.')
#if name == 'Chris'
#    puts('What a lovely name! :)')
#end

#puts('I am a fortune teller. Tell me your name.')
#name = gets.chomp
#
#if name == 'Chris'
#    puts('Wow..I see great things in your future.')
#else
#    puts('Your future is..oh..my! Look at the time!')
#    puts('I really have to go, sorry!')
#end

#puts ('Welcome to 7th grade English.')
#puts('My name is Mrs. Hubbard. And your name is?')
#
#name = gets.chomp
#
#if name == name.capitalize
#    puts('Welcome ' + name + '. Please have a seat')
#else
#    puts('You mean ' + name.capitalize + ', right?')
#    puts('Don\'t you even know how to spell your name?')
#    reply = gets.chomp
#    if reply == 'yes'
#        puts('Hmmph..! Well, sit down!')
#    else
#        puts('GET OUT!!')
#    end
#end

#command = ''
#while command != 'bye'
#    command = gets.chomp
#    puts(command)
#end
#
#puts('Come again soon!')
#

#puts('Hello there, and your name is?')
#name = gets.chomp
#if (name =='chris' or name == 'katy')
#    puts('Hello ' + name + '. What a lovely name!')
#end

#iAmLakshmi = true
#iAmPurple = false
#iLikeFood = true
#iEatRocks = false
#
#puts (iAmLakshmi and iLikeFood)
#puts (iAmLakshmi and iAmPurple)
#puts (iEatRocks and iAmLakshmi)
#puts (iEatRocks and iAmPurple)
#
#puts (iAmLakshmi or iLikeFood)
#puts (iAmLakshmi or iAmPurple)
#puts (iEatRocks or iAmLakshmi)
#puts (iEatRocks or iAmPurple)
#
#puts (not iAmLakshmi)
#puts (not iEatRocks)

#EXERCISES
#==========
#1. DEAF GRANDMA
#puts ('Hello Sonny! So, what were you saying?')
#reply = gets.chomp
#while reply != 'BYE'
#    reply = gets.chomp
#    if reply != reply.upcase
#        puts ('Huh..! Speak up SONNY!')
#    else
#        puts ('N0, NOT since ' +rand(1930..1950).to_s)
#    end
#end

#2. 99 Bottles of beer on the wall
#bottles = 99
#while bottles > 1 
#    puts(bottles.to_s + ' bottles of beer on the wall,' + bottles.to_s + ' bottles of beer.')
#    puts('Take one down and pass it around, ' + (bottles-1).to_s + ' bottles of beer on the wall.')
#    bottles-=1
#end
#puts(bottles.to_s  + ' bottle of beer on the wall,' + bottles.to_s + ' bottle of beer.')
#puts('Take one down and pass it around, no more bottles of beer on the wall.')
#puts('No more bottles of beer on the wall, no more bottles of beer. ')
#puts('Go to the store and buy some more, 99 bottles of beer on the wall.')

#CHAPTER 7 :- ARRAYS AND ITERATORS
#each do
#arr = [1,2,3,4]
#arr.each do |i|
#    puts i+1
#end
#
#languages = ['English', 'German', 'Telugu']
#languages.each do |lang|
#    puts('I love ' + lang)
#    puts(' Don\'t you?')
#end
#puts('And, let\'s  hear it for C++!')
#puts('...')
#
#3.times do
#    puts('Hip Hip Hurray!!')
#end

#Array methods
#to_s and join

#foods = ['artichoke', 'brioche', 'caramel']
#puts foods.to_s
#puts foods.join(', ')
#puts foods.join(' :) ') + ' 8)'

#new_arr = [['a','b'], ['c','d'], ['e','f'], ['g','h']]
#20.times do
#    puts (new_arr)
#end
#
#favorites = []
#favorites.push('rain drops on roses')
#favorites.push('whiskey on kittens')
#puts favorites[0]
#puts favorites.last
#puts favorites.length
#
#puts favorites.pop
#puts favorites
#puts favorites.length

#puts('Enter a word: ')
#user_input = gets.chomp
#word_arr = []
#while user_input != ''
#    puts('Enter a word: ')
#    user_input = gets.chomp
#    word_arr.push(user_input)
#end
#word_arr.sort
#puts (word_arr)








    
