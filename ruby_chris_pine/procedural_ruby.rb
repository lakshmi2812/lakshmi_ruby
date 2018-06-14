#puts "Welcome to the game hi/lo! :)"
#hidden_num = rand(1..10)
#puts "Make your first guess! :)"
#guess1 = gets.chomp.to_i
#if guess1 == hidden_num
#    puts "It is #{guess1} indeed!"
#    puts "Congrats, you have won! :)"
#    exit
#elsif guess1 > hidden_num
#    puts "Go lower"
#else
#    puts "Go higher"
#end
#
#puts "Make your second guess"
#guess2 = gets.chomp.to_i
#if guess2 == hidden_num
#    puts "It is #{guess2} indeed!"
#    puts "Congrats, you have won! :)"
#    exit
#elsif guess2 > hidden_num
#    puts "Go lower"
#else
#    puts "Go higher"
#end
#
#puts "Make your third and last guess!"
#guess3 = gets.chomp.to_i
#if guess3 == hidden_num
#    puts "It is #{guess3} indeed!"
#    puts "Congrats, you have won! :)"
#    exit
#else 
#    puts "You have lost the game!"
#    puts "The hidden number is: #{hidden_num}"
#end

#def check_guess(guess, hidden_num, num_of_guesses)
#    if guess == hidden_num
#        puts "The hidden number was indeed #{hidden_num}"
#        puts "You have won! Congrats :)"
#        exit
#    elsif num_of_guesses == 3
#        puts "You LOST!! Game over!"
#    elsif guess > hidden_num
#        puts "Go lower"
#    else
#        puts "Go higher"
#    end
#end
#        
#def play
#    max_guesses = 3
#    num_of_guesses = 0
#    hidden_num = rand(1..10)
#    puts "Welcome to the game hi/lo!"
#    puts "You have three guesses to find the hidden number between 1 and 10"
#    i = 0
#    while num_of_guesses < max_guesses
#        num_of_guesses += 1
#        puts "Please make a guess!"
#        guess = gets.chomp.to_i
#        puts "Your guess was #{guess}"
#        check_guess(guess, hidden_num, num_of_guesses)
#    end
#end
#
#play


#def AdditivePersistence(num)
#    count = 0
#    while num >= 10
#        num_arr = num.to_s.chars
#        number_arr = []
#        num_arr.each{|item| number_arr.push(item.to_i)}
#        total = number_arr.inject(0){|sum,num| sum+num}
#        num = total
#        count += 1
#    end
#  return count   
#end

#def OffLineMinimum(strArr)
#    i = 0
#    strArr_dup = strArr.dup
#    min_sub_arr = []
#    current_min = 0
#    while i < strArr_dup.size
#        current = strArr_dup[i]
#        temp_arr = []
#        if current == "E"
#            sub_arr = strArr_dup[0..(i-1)]
#            sub_arr.delete("E")
#            sub_arr.each{|num| temp_arr.push(num.to_i)}
#            temp_arr = temp_arr - min_sub_arr
#            current_min = temp_arr.min
#            min_sub_arr.push(current_min)
#            #strArr_dup.delete_at((strArr_dup.index(temp_arr.min)))
#        end
#        i += 1
#    end
#    min_sub_arr     
#end
#
#print(OffLineMinimum(["5","4","6","E","1","7","E","E","3","2"]))
#  
#print(OffLineMinimum(["1","2","E","E","3"]))
#
#def HammingDistance(strArr)
#    distance = 0
#    i = 0
#    str1_arr = strArr[0].split("")
#    str2_arr = strArr[1].split("")
#    while i < str1_arr.size
#        if str1_arr[i] != str2_arr[i]
#            distance += 1
#        end
#        i += 1 
#    end
#    distance
#end

#def PalindromeTwo(str)
#    alpha = ("a".."z").to_a + ("A".."Z").to_a 
#    str_arr = str.chars
#    x = 0
#    palindrome = true
#    str_arr_final = []
#    str_arr.each do |s| 
#        if alpha.include?(s) 
#            str_arr_final.push(s.downcase)
#        end
#    end
#    print(str_arr_final)
#    n = str_arr_final.size - 1
#    while x < str_arr_final.size
#        puts(str_arr_final[x], str_arr_final[n-x])
#        if str_arr_final[x] != str_arr_final[n-x]
#            puts("Not matching: ",str_arr_final[x], str_arr_final[n-x])
#            palindrome = false
#            break
#        end
#        x += 1
#    end
#    palindrome    
#end
#
#puts(PalindromeTwo("Noel - sees Leon"))


#def PalindromeTwo(str)
#    palindrome = true
#    alpha = ('a'..'z').to_a + ('A'..'Z').to_a
#    a = 0
#    str_arr = str.chars
#    n = str_arr.size - 1
#    while a < n
#        if alpha.include?(str_arr[a]) == false
#            a += 1
#        elsif alpha.include?(str_arr[n]) == false
#            n = n-1
#        else
#            if str_arr[a].downcase != str_arr[n].downcase
#                puts(str_arr[a], str_arr[n])
#                palindrome = false
#                break
#            end
#        end
#        a += 1
#    end
#    palindrome     
#end

#puts (PalindromeTwo("A war at Tarawa!"))

#def Division(num1,num2)
#    fact1 = factors(num1)
#    fact2 = factors(num2)
#    f = 0
#    cf = []
#    while f < fact1.size
#        if fact2.include?(fact1[f])
#            cf.push(fact1[f])
#        end
#        f += 1
#    end
#    puts cf
#    gcf = cf.max
#    gcf
#         
#end
#
#def factors(num)
#    x = 1
#    factor_arr = []
#    while x <= (Math.sqrt(num)).floor
#        if num%x == 0
#            factor_arr.push(x)
#            if factor_arr.include?(num/x) == false
#                factor_arr.push(num/x)
#            end
#        end
#        x += 1
#    end
#    factor_arr
#end   
#
#puts(Division(36,54))
#print(factors(36))
#print(factors(54))

#def StringScramble(str1,str2)
#    scramble = false
#    str1_arr = str1.chars
#    str2_arr =str2.chars
#    x = 0
#    while x < str2_arr.size
#        current = str2_arr[x]
#        if str1_arr.include?(str2_arr[x])
#            str1_arr.delete_at(str1_arr.index(current))
#        else
#            break
#        end
#        x += 1
#    end
#    if x == str2_arr.size
#        scramble = true
#    end
#    scramble
#end
#
#puts(StringScramble("cdore","coder"))
#puts(StringScramble("coodrebtqqkye","coderbyte"))
#puts(StringScramble("codrebtaqqq","coderbyte"))
#1. For the input "coodrebtqqkye" and "coderbyte" your output was incorrect. The correct answer is true.
#2. For the input "codrebtaqqq" and "coderbyte" your output was incorrect. The correct answer is false.
#3. For the input "heloooolwrdlla" and "helloworld" your output was incorrect. The correct answer is true.
#4. For the input "abcgggdfe" and "abcdef" your output was incorrect. The correct answer is true.
#5. For the input "coamamaaqq" and "comma" your output was incorrect. The correct answer is true.
#6. For the input "thsisifasl3" and "thisisfalse" your output was incorrect. The correct answer is false.
#7. For the input "lettrrkakaeaaaqq" and "letter" your output was incorrect. The correct answer is true.
#8. For the input "yelowrqwedlk" and "yellowred" your output was incorrect. The correct answer is true.


def PermutationStep(num)
    num_arr = num.to_s.chars
    perm = num_arr.permutation.to_a
    x = 0
    smallest_greater = 10000000000
    while x < perm.size
        current = perm[x].join("").to_i
        if (current > num) and (current < smallest_greater) 
            smallest_greater = current
        end
        x += 1
    end
    if smallest_greater == 10000000000
        return -1
    else
        return smallest_greater
    end
end

puts(PermutationStep(111))
   