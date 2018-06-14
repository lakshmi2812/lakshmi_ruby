#puts ('Hello, and thank you for taking the time to')
#puts('help me with this experiment. My experiment')
#puts 'has to do with the way people feel about'
#puts 'Mexican food.  Just think about Mexican food'
#puts 'and try to answer every question honestly,'
#puts 'with either a "yes" or a "no".  My experiment'
#puts 'has nothing to do with bed-wetting.'
#puts
#
#good_answer = false
#while (not good_answer)
#    puts('Do you like eating tacos?')
#    answer = gets.chomp.downcase
#    if answer == 'yes' or answer == 'no'
#        good_answer = true
#    else
#        puts('Please answer "yes" or "no".')
#    end
#end
#
#good_answer = false
#while (not good_answer)
#    puts('Do you like eating burritos?')
#    answer = gets.chomp.downcase
#    if answer == 'yes' or answer == 'no'
#        good_answer = true
#    else
#        puts('Please answer "yes" or "no".')
#    end
#end
#
#good_answer = false
#while (not good_answer)
#    puts('Do you wet the bed?')
#    answer = gets.chomp.downcase
#    if answer == 'yes' or answer == 'no'
#        good_answer = true
#        if answer == "yes"
#            wets_bed = true
#        else
#            wets_bed = false
#        end
#    else
#        puts('PLease answer "yes" or "no"')
#    end
#end
#
#good_answer = false
#while (not good_answer)
#    puts('Do you like eating chimichangas?')
#    answer = gets.chomp.downcase
#    if answer == 'yes' or answer == 'no'
#        good_answer = true
#    else
#        puts('Please answer "yes" or "no".')
#    end
#end
#
#good_answer = false
#while (not good_answer)
#    puts('Do you like eating soapapillas?')
#    answer = gets.chomp.downcase
#    if answer == 'yes' or answer == 'no'
#        good_answer = true
#    else
#        puts('Please answer "yes" or "no".')
#    end
#end
#
#puts
#puts 'DEBRIEFING:'
#puts 'Thank you for taking the time to help with'
#puts 'this experiment.  In fact, this experiment'
#puts 'has nothing to do with Mexican food.  It is'
#puts 'an experiment about bed-wetting.  The Mexican'
#puts 'food was just there to catch you off guard'
#puts 'in the hopes that you would answer more'
#puts 'honestly.  Thanks again.'
#puts
#puts "So, it\'s " + wets_bed.to_s + " that you wet bed huh!"

#def say_moo
#    puts ('Moooooo!')
#end
#
#say_moo
#say_moo
#puts('coin...coin')
#say_moo
#say_moo
#def sayMoo(number_of_moos)
#    puts 'moooo.....'*number_of_moos
#end
#
#sayMoo(3)
#puts('oink...oink')
#sayMoo

#Local variables
#
#def doubleThis(num)
#    numTimes2 = num * 2
#    puts(num.to_s + ' doubled is ' + numTimes2.to_s)
#end
#
#doubleThis(44)

#def littlePest(var)
#    var = nil
#    puts('Haha..! I just ruined your variable')
#end
#
#var = 'You can\'t even touch my variable'
#littlePest(var)
#puts var

#RETURN VALUES

#returnVal = puts 'This puts returned'
#puts returnVal

#def sayMoo(number_of_times)
#    puts ('mooo...' * number_of_times)
#    'yellow submarine'
#end
#x = sayMoo(3)
#puts x

#def ask(question)
#    good_answer = false
#    while (not good_answer)
#        puts (question)
#        reply = gets.chomp
#        if (reply == "yes" or reply == "no")
#            good_answer = true
#            if reply == "yes"
#                answer = true
#            else
#                answer = false
#            end
#        else
#            puts ('Please answer "yes" or "no".')
#        end
#    end
#    answer # This is what we return(true or false)
#end
#
#puts('Thank you for...')
#ask('Do you like eating tacos?')
#ask('Do you like eating burritos?')
#wetsBed = ask('Do you wet the bed?')
#ask 'Do you like eating chimichangas?'
#ask 'Do you like eating sopapillas?'
#ask 'Do you like eating tamales?'
#puts 'Just a few more questions...'
#ask 'Do you like drinking horchata?'
#ask 'Do you like eating flautas?'
#
#puts('Debriefing')
#puts('Thank you for...')
#puts('Hmm...So, you say it\'s '+wetsBed.to_s+ ' that you wet bed, huh! ;)')

def englishNumber(number)
    if number < 0
        puts('Please enter a number greater 0 or greater')
    end
    if number > 100
        puts('Please enter a number 100 or less')
    end
    
    num_string = ''
    
    left = number
    write = left/100 #to see how many hundreds the number has(hundreds place digit)
    
    left = left - write*100 #to write the remaining number
    
    if write > 0
        num_string = 'one hundred'
    end
    
    write = left/10 # how many 10s are there in the number(tens place)
    left = left - write * 10 #subtract off those tens(left now has digit in one's place)
    
    if write > 0
        if write == 1
            if left == 0
                num_string = num_string + 'ten'
            elsif left == 1
                num_string = num_string + 'eleven'
            elsif left == 2
                num_string = num_string + 'twelve'
            elsif left == 3
                num_string = num_string + 'thirteen'
            elsif left == 4
                num_string = num_string + 'fourteen'
            elsif left == 5
                num_string = num_string + 'fifteen'
            elsif left == 6
                num_string = num_string + 'sixteen'
            elsif left == 7
                num_string = num_string + 'seventeen'
            elsif left == 8
                num_string = num_string + 'eighteen'
            elsif left == 9
                num_string = num_string + 'nineteen'
            end
            left = 0  #since we took care of ones place if tens place(write = 1) is 1 
        elsif write == 2
            num_string = num_string + 'twenty'
        elsif write == 3
            num_string = num_string + 'thirty'
        elsif write == 4
            num_string = num_string + 'forty'
        elsif write == 5
            num_string = num_string + 'fifty'
        elsif write == 6
            num_string = num_string + 'sixty'
        elsif write == 7
            num_string = num_string + 'seventy'
        elsif write == 8
            num_string = num_string + 'eighty'
        elsif write == 9
            num_string = num_string + 'ninety'
        end
        if left > 0
            num_string = num_string + '-'
        end
    end
    write = left
    left = 0
    if write > 0
        if write == 1
            num_string += 'one'
        elsif num_string == 2
            num_string = num_string + 'two'
        elsif num_string == 3
            num_string += 'three'
        elsif num_string == 4
            num_string += 'four'
        elsif num_string == 5
            num_string += 'five'
        elsif num_string == 6
            num_string += 'six'
        elsif num_string == 7
            num_string += 'seven'
        elsif num_string == 8
            num_string += 'eight'
        elsif num_string == 9
            num_string += 'nine'
        end
    end
    if num_string == ''
        return 'zero'
    end
    
    num_string
        
end

#puts (englishNumber(0))
#puts englishNumber(9)
#puts englishNumber(10)
#puts englishNumber(11)
#puts englishNumber(17)
#puts englishNumber(32)
#puts englishNumber(88)
#puts englishNumber(99)
#puts englishNumber(100)


def english_number(number)
    if number < 0
        return ('Please enter a number that isn\'t negative')
    end
    if number == 0
        return 'zero'
    end
    num_string = ''
    ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
    tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
    teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
    
    left = number
    write = left/100
    
    left = left - write*100
    
    if write > 0
        #recursion
        hundreds = english_number(write)
        num_string = num_string + hundreds + ' hundred' 
        
        if left > 0
            num_string = num_string + ' '
        end
    end
    
    write = left/10
    left = left - write * 10
    
    if write > 0
        
        if (write == 1) and (left > 0)
            num_string = num_string + teenagers[left-1]
            left = 0
        else
            num_string = num_string + tens_place[write-1]
        end
        
        if left > 0
            num_string = num_string + '-'
        end
    end
    
    write = left
    left = 0
    
    if write > 0
        num_string = num_string + ones_place[write-1]
    end
    
    #Now, we are just returning the num_string
    num_string
end

puts english_number(  0)
puts english_number(  9)
puts english_number( 10)
puts english_number( 11)
puts english_number( 17)
puts english_number( 32)
puts english_number( 88)
puts english_number( 99)
puts english_number(100)
puts english_number(101)
puts english_number(234)
puts english_number(3211)
puts english_number(999999)
puts english_number(1000000000000)
            
        
        






















































