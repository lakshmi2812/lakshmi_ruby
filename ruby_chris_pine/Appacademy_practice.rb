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



#Write a function disemvowel(string), which takes in a string,
#and returns that string with all the vowels removed. Treat "y" as a consonant.

#def disemvowel(string)
#    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
#    str_arr = string.split("")
#    disemvowel_str = ""
#    #puts "Initially, str_arr is:", str_arr_copy
#    x = 0
#    while x < str_arr.size
#        if vowels.include?(str_arr[x]) == false
#            disemvowel_str += str_arr[x]
#            #puts "str_arr_copy is:",str_arr_copy
#        end
#        x+=1
#    end
#    disemvowel_str
#end
#
#puts(disemvowel("foobar") == "fbr")
#puts(disemvowel("ruby") == "rby")
#puts(disemvowel("aeiou") == "")
#puts(disemvowel("aeiouAEIO") == "")
#puts(disemvowel("") == "")
            

#Lucky sevens

#def lucky_sevens(numbers)
#    x = 0
#    lucky = false
#    while x < (numbers.size - 2)
#        if numbers[x]+numbers[x+1]+numbers[x+2] == 7
#            lucky = true 
#            break
#        end
#        x+=1
#    end
#    lucky
#end
#
#puts(lucky_sevens([2,1,5,1,0]) == true)
#puts(lucky_sevens([0,-2,1,8]) == true) # => -2 + 1 + 8 == 7
#puts(lucky_sevens([7,7,7,7]) == false)#false
#puts(lucky_sevens([3,4,3,4]) == false)#
#puts(lucky_sevens([7,0,0,7]) == true)
#puts(lucky_sevens([]) == false)

#Write a function oddball_sum(numbers), which takes in an array of integers 
#and returns the sum of all the odd elements.

#def oddball_sum(numbers)
#    x = 0
#    odd_sum = 0
#    while x < numbers.size
#        if numbers[x] % 2 == 1
#            odd_sum += numbers[x]
#        end
#        x += 1
#    end
#    odd_sum
#end
#
#puts(oddball_sum([1,2,3,4,5]) == 9)
#puts(oddball_sum([0,6,4,4]) == 0)
#puts(oddball_sum([1,2,1]) == 2)
#puts(oddball_sum([]) == 0)


# Write a method that takes in a string of lowercase letters (no
# uppercase letters, no repeats). Consider the *substrings* of the
# string: consecutive sequences of letters contained inside the string.
# Find the longest such string of letters that is a palindrome.
#
# Note that the entire string may itself be a palindrome.
#
# You may want to use Array's `slice(start_index, length)` method,
# which returns a substring of length `length` starting at index
# `start_index`:
#
#     "abcd".slice(1, 2) == "bc"
#     "abcd".slice(1, 3) == "bcd"
#     "abcd".slice(2, 1) == "c"
#     "abcd".slice(2, 2) == "cd"
#
# Difficulty: hard.


# These are tests to check that your code is working. After writing
# your solution, they should all print true.

#def longest_palindrome(string)
#    x = 0
#    longest_p = ""
#    palindrome_hash = Hash.new()
#    str_arr = string.split("") 
#    #palindrome_arr = []
#    while x < str_arr.size - 1
#        y = x + 1
#        while y < str_arr.size
#            current = str_arr[x..y].join('')
#            palindrome = is_palindrome?(current)
#            if palindrome == true
#                #palindrome_arr.push(current)
#                palindrome_hash[current.size] = current
#            end
#            y+=1
#        end
#        x+=1
#    end
#    palindrome_lengths = palindrome_hash.keys
#    longest = 0
#    i = 0
#    while i < palindrome_lengths.size
#        if palindrome_lengths[i] > longest
#            longest = palindrome_lengths[i]
#        end
#        i+=1
#    end
#    longest_p = palindrome_hash[longest]
#    longest_p
#end
#
#def is_palindrome?(str)
#    str_arr = str.split("")
#    x = 0
#    palindrome = true
#    n = str_arr.size - 1
#    while x < str_arr.size
#        if str_arr[x] != str_arr[n-x]
#            palindrome = false
#        end   
#        x += 1
#    end
#    palindrome
#end
#
##puts (is_palindrome?("abba") == true)
##puts (is_palindrome?("abc") == false)
#puts(
#  'longest_palindrome("abcbd") == "bcb": ' +
#  (longest_palindrome('abcbd') == 'bcb').to_s
#)
#puts(
#  'longest_palindrome("abba") == "abba": ' +
#  (longest_palindrome('abba') == 'abba').to_s
#)
#puts(
#  'longest_palindrome("abcbdeffe") == "effe": ' +
#  (longest_palindrome('abcbdeffe') == 'effe').to_s
#)

#def wonky_coins(n)
#    if n == 0
#        return 1
#    elsif n == 1
#        return 3
#    else
#        result = wonky_coins(n/2) + wonky_coins(n/3) + wonky_coins(n/4)
#        return result
#    end
#end
#
#puts("\nTests for #wonky_coins")
#puts("===============================================")
#    puts "wonky_coins(1) == 3: "  + (wonky_coins(1) == 3).to_s
#    puts "wonky_coins(5) == 11: "  + (wonky_coins(5) == 11).to_s
#    puts "wonky_coins(6) == 15: "  + (wonky_coins(6) == 15).to_s
#    puts "wonky_coins(0) == 1: "  + (wonky_coins(0) == 1).to_s
#puts("===============================================")


#def num_repeats(string)
#    x = 0
#    string_arr = string.split("")
#    letter_repeat_hash = Hash.new()
#    while x < (string_arr.size - 1)
#        current = string_arr[x]
#        y = x+1
#        count = 0
#        while y < string_arr.size
#            if string_arr[y] == current
#                count += 1
#            end
#            y+=1
#        end
#        if count > 0
#            letter_repeat_hash[current] = count
#        end
#        x+=1
#    end
#    letter_repeat = letter_repeat_hash.keys.size
#    letter_repeat
#end
#
## These are tests to check that your code is working. After writing
## your solution, they should all print true.
#
##puts('num_repeats("abdbc") == 1: ' + (num_repeats('abdbc') == 1).to_s)
## one character is repeated'num_repeats("aaa") == 1: ' + 
#puts(num_repeats('aaa') == 1)
#puts('num_repeats("abab") == 2: ' + (num_repeats('abab') == 2).to_s)
#puts('num_repeats("cadac") == 2: ' + (num_repeats('cadac') == 2).to_s)
#puts('num_repeats("abcde") == 0: ' + (num_repeats('abcde') == 0).to_s)
#arr = 1173.to_s.split("")
#puts arr

#def no_repeats(year_start, year_end)
#    year = year_start
#    no_repeat_arr = []
#    while year <= year_end
#        repeat = false
#        current = year
#        current_arr = current.to_s.split("")
#        x = 0
#        while x < (current_arr.size - 1)
#            curr = current_arr[x]
#            y = x + 1
#            while y < current_arr.size
#                if curr == current_arr[y]
#                   repeat = true
#                   break
#                end
#                y += 1
#            end
#            if repeat == true
#                break
#            end
#            x += 1
#        end
#        if repeat == false
#            no_repeat_arr.push(current)
#        end
#        year += 1
#    end
#    no_repeat_arr
#end
#
#puts("\nTests for #no_repeats")
#puts("===============================================")
#puts "no_repeats(1234, 1234) == [1234]: "  + (no_repeats(1234, 1234) == [1234]).to_s
#puts "no_repeats(1123, 1123) == []: "  + (no_repeats(1123, 1123) == []).to_s
#puts "no_repeats(1980, 1987) == [1980,1982,1983,1984,1985,1986,1987]: " + (no_repeats(1980, 1987) == [1980,1982,1983,1984,1985,1986,1987]).to_s
#puts (no_repeats(1980, 1987))
#puts("===============================================")


#def letter_count(str)
#    str_array = str.split(' ')
#    i = 0
#    while i < str_array.size 
#        str_arr = str_array[i].split("")
#        x = 0
#        letter_count_hash = Hash.new()
#        while x < str_arr.size
#            count = 1
#            if x < (str_arr.size-1)
#                y = x + 1
#                current = str_arr[x]
#                while y < str_arr.size
#                    if current == str_arr[y]
#                        count += 1
#                    end
#                    y += 1
#                end
#                x += 1
#                if letter_count_hash[current] == nil
#                    letter_count_hash[current] = count 
#                end
#            else
#                count = 1
#                current = str_arr[x]
#                if letter_count_hash[current] == nil
#                    letter_count_hash[current] = count 
#                end
#                x += 1
#            end
#        end
#        if letter_count_hash[current] == nil
#                    letter_count_hash[current] = count 
#                end
#        i+=1
#    end
#    letter_count_hash
#end

#def letter_count(str)
#    str_array = str.split("")
#    letter_count_hash = Hash.new()
#    str_array.each do |x|
#        count_each = str_array.count(x)
#        if x != " "
#            letter_count_hash[x] = count_each
#        end
#    end
#    letter_count_hash
#end
#
#puts (letter_count("cats are fun"))
#
#puts("\nTests for #letter_count")
#puts("===============================================")
#    puts "letter_count(\"cat\") == {\"c\" => 1, \"a\" => 1, \"t\" => 1}: "  + (letter_count("cat") == {"c" => 1, "a" => 1, "t" => 1}).to_s
#    puts "letter_count(\"moon\") == {\"m\" => 1, \"o\" => 2,\"n\" => 1}: "  + (letter_count("moon") == {"m" => 1, "o" => 2,"n" => 1}).to_s
#    puts "letter_count(\"cats are fun\") == {\"a\" => 2, \"c\" => 1, \"e\"=> 1, \"f\" => 1, \"n\" => 1, \"r\" => 1, \"s\" => 1, \"t\" => 1, \"u\" => 1}: "  + (letter_count("cats are fun") == {"a" => 2, "c" => 1, "e"=> 1, "f" => 1, "n" => 1, "r" => 1, "s" => 1, "t" => 1, "u" => 1}).to_s
#puts("===============================================")

#def ordered_word(word)
#    word_arr = word.split("")
#    x = 0
#    ordered = true
#    while x < (word_arr.size-1)
#        if word_arr[x] > word_arr[x+1]
#            ordered = false
#            break
#        end
#        x += 1
#    end
#    ordered
#end

#print(ordered_word("amz") ==true)
#print(ordered_word("zma") == false)
#print(ordered_word("aa") == true) # repeats okay

# Write a method, `ordered_vowel_words(str)` that takes a string of
# lowercase words and returns a string with just the words containing
# all their vowels (excluding "y") in alphabetical order. Vowels may
# be repeated (`"afoot"` is an ordered vowel word).
#
# You will probably want a helper method, `ordered_vowel_word?(word)`
# which returns true/false if a word's vowels are ordered.
#
# Difficulty: 2/5

#def ordered_vowel_words(string)
#    string_arr = string.split(' ')
#    x = 0
#    final_str_arr = []
#    while x < string_arr.size
#        current = string_arr[x]
#        if ordered_vowel_word(current)
#            final_str_arr.push(current)
#        end
#        x += 1
#    end
#    final_str = final_str_arr.join(' ')
#    final_str
#end
#
#def ordered_vowel_word(word)
#    word_arr = word.split("")
#    ordered = true
#    vowels = ["a", "e", "i", "o", "u"]
#    x = 0
#    idx = 0
#    while x < word_arr.size
#        if vowels.include?(word_arr[x])
#            current = word_arr[x]
#            current_number = vowels.index(current)
#            if (current_number >= idx)
#                idx = current_number
#                #puts idx
#            else
#                ordered = false
#                break
#            end
#        end
#        x += 1
#    end
#    ordered
#end

#puts(ordered_vowel_word('hello') == true)
#puts(ordered_vowel_word('system') == true)
#puts(ordered_vowel_word('complicated') == false)
#puts(ordered_vowel_word('') == true)

#puts("\nTests for #ordered_vowel_words")
#puts("===============================================")
#    puts "ordered_vowel_words(\"amends\") == \"amends\": "  + (ordered_vowel_words("amends") == "amends").to_s
#    puts "ordered_vowel_words(\"complicated\") == \"\": "  + (ordered_vowel_words("complicated") == "").to_s
#    puts "ordered_vowel_words(\"afoot\") == \"afoot\": "  + (ordered_vowel_words("afoot") == "afoot").to_s
#    puts "ordered_vowel_words(\"ham\") == \"ham\": "  + (ordered_vowel_words("ham") == "ham").to_s
#    puts "ordered_vowel_words(\"crypt\") == \"crypt\": "  + (ordered_vowel_words("crypt") == "crypt").to_s
#    puts "ordered_vowel_words(\"o\") == \"o\": "  + (ordered_vowel_words("o") == "o").to_s
#    puts "ordered_vowel_words(\"tamely\") == \"tamely\": "  + (ordered_vowel_words("tamely") == "tamely").to_s
#    
#    phrase = "this is a test of the vowel ordering system"
#    result = "this is a test of the system"
#    puts "ordered_vowel_words(phrase) == result: "  + (ordered_vowel_words(phrase) == result).to_s
#puts("===============================================")


#def one_off_words(word, word_list)
#    x = 0
#    one_off_arr = []
#    while x < word_list.size
#        current = word_list[x]
#        if one_off_word(word, current)
#            one_off_arr.push(current)
#        end
#        x += 1
#    end
#    one_off_arr
#end
#
#def one_off_word(word1, word2)
#    x = 0
#    count = 0
#    one_off = true
#    while x < word1.size or x < word2.size
#        if word1[x] != word2[x]
#            count += 1
#        end
#        x += 1
#    end
#    if count > 1
#        one_off = false
#    end   
#    one_off
#end
#
#puts(one_off_word("door", "moor"))
#
#WORDS = ["door", "moot", "boot", "boots"]
#puts(one_off_words("moor", WORDS) == ["door", "moot"])

#def word_unscrambler(string, words)
#    string_arr = string.split("")
#    string_arr_sorted = string_arr.sort
#    x = 0
#    anagrams = []
#    while x < words.size
#        current = words[x]
#        current_arr = current.split("")
#        current_arr_sorted = current_arr.sort
#        if current_arr_sorted == string_arr_sorted
#            anagrams.push(current)
#        end
#        x += 1
#    end
#    anagrams
#end
#
#puts(word_unscrambler("cat", ["tac"]))
#
#puts("\nTests for #word_unscrambler")
#puts("===============================================")
#    puts "word_unscrambler(\"cat\", [\"tac\"]) == [\"tac\"]: "  + (word_unscrambler("cat", ["tac"]) == ["tac"]).to_s
#    puts "word_unscrambler(\"cat\", [\"tom\"]) == []: "  + (word_unscrambler("cat", ["tom"]) == []).to_s
#    puts "word_unscrambler(\"cat\", [\"tic\", \"toc\", \"tac\", \"toe\"]) == [\"tac\"]: "  + (word_unscrambler("cat", ["tic", "toc", "tac", "toe"]) == ["tac"]).to_s
#    puts "word_unscrambler(\"cat\", [\"scatter\", \"tac\", \"ca\"] ) == [\"tac\"]: "  + (word_unscrambler("cat", ["scatter", "tac", "ca"] ) == ["tac"]).to_s
#    puts "word_unscrambler(\"turn\", [\"numb\", \"turn\", \"runt\", \"nurt\"]) == [\"turn\", \"runt\", \"nurt\"]: "  + (word_unscrambler("turn", ["numb", "turn", "runt", "nurt"]) == ["turn", "runt", "nurt"]).to_s
#
#puts("===============================================")



#def findWord(query, array_of_strings)
#    endarray = []
#    query_arr = query.downcase.split("")
#    query_len = query_arr.size - 1
#    x = 0
#    while x < array_of_strings.size
#        current = array_of_strings[x]
#        current_arr = current.downcase.split("")
#        i = 0
#        while i < (current_arr.size-1)
#            substring = current_arr[i..(i+query_len)]
#            if substring == query_arr
#                endarray.push(current)
#            end
#            i += 1
#        end
#        x += 1
#    end
#    if endarray != []
#        return endarray
#    else
#        return ["Empty"]
#    end
#end
#
#a = ["elf", "bog creature", "bee ","milk","FROGS"]
#puts(findWord("og", a) == ["bog creature", "FROGS"])
##puts(findWord("og", a)[1] == "FROGS", 'Incorrect.')
##puts(findWord("MIL", a)[0] == "milk", 'Incorrect.')
##puts(findWord(" ", a)[0] == "bog creature", 'Incorrect.')
##puts(findWord(" ", a)[1] == "bee ", 'Incorrect.')
#puts(findWord("26", a) == ["Empty"])



#def gimme(input_array)
#    input_sort = input_array.sort
#    middle = input_sort[1]
#    middle_index = input_array.index(middle)
#    middle_index
#end
#
#puts(gimme([2, 3, 1]) == 0)




#def sort_by_value_and_index(arr)
#    x = 0
#    product_hash = {}
#    sorted_arr = []
#    while x < arr.size
#        current_value = arr[x]
#        current_index = x+1
#        current_product = current_index*current_value
#        product_hash[current_product] = current_value
#        x += 1
#    end
#    product_keys = product_hash.keys
#    product_keys = product_keys.sort
#    product_keys.each do |i|
#        sorted_arr.push(product_hash[i])
#    end
#    sorted_arr
#end
#
#puts(sort_by_value_and_index([23,2,3,4,5]) == [2,3,4,23,5])
#
#puts(sort_by_value_and_index([ 1, 2, 3, 4, 5 ]) == [ 1, 2, 3, 4, 5 ])
#puts(sort_by_value_and_index([ 23, 2, 3, 4, 5 ]) == [ 2, 3, 4, 23, 5 ])
#puts(sort_by_value_and_index([ 26, 2, 3, 4, 5 ]) == [ 2, 3, 4, 5, 26 ])
#puts(sort_by_value_and_index([ 9, 5, 1, 4, 3 ]) == [ 1, 9, 5, 3, 4 ])
#

#def dasherize_number(num)
#  num_array = num.to_s.split("")
#  x = 0
#  final_str = ""
#  while x < num_array.size
#    current = num_array[x].to_i
#    current_str = num_array[x]
#    if x > 0
#        prev_digit = num_array[x-1].to_i
#        if (prev_digit%2 == 1) || (current%2 == 1)
#            final_str += "-"
#        end
#    end
#    final_str += current_str
#    x += 1
#  end
#  final_str
#end
#
##Tests
#puts(dasherize_number(333))
##puts(dasherize_number(203))
#
#puts(
#   'dasherize_number(203) == "20-3": ' +
#   (dasherize_number(203) == '20-3').to_s
# )
# puts(
#   'dasherize_number(303) == "3-0-3": ' +
#   (dasherize_number(303) == '3-0-3').to_s
# )
#puts(dasherize_number(333))
## puts(
##   'dasherize_number(333) == "3-3-3": ' +
##   (dasherize_number(333) == '3-3-3').to_s
## )
# puts(
#   'dasherize_number(3223) == "3-22-3": ' +
#   (dasherize_number(3223) == '3-22-3').to_s)


#The goal of this exercise is to convert a string to a new string where each character in the new string is '(' if that character appears only once in the original string, or ')' if that character appears more than once in the original string. Ignore capitalization when determining if a character is a duplicate.
#
#Examples:
#
#"din" => "((("
#
#"recede" => "()()()"
#
#"Success" => ")())())"
#
#"(( @" => "))(("


#def duplicate_encode(word)
#    result_str = ""
#    word_arr = word.downcase.split("")
#    x = 0
#    while x < word_arr.size
#        current = word_arr[x]
#        curr_count = word_arr.count(current)
#        if curr_count == 1
#            result_str += "("
#        else
#            result_str += ")"
#        end
#        x +=1
#    end
#    result_str
#end
#
#puts(duplicate_encode("din") == "(((")
#puts(duplicate_encode("recede") == "()()()")
#puts(duplicate_encode("Success") == ")())())")
#puts(duplicate_encode("(( @") == "))((")


#Your task is to sort the characters in a string according to the following rules:

# Rule1: English alphabets are arranged from A to Z, case insensitive.
#  ie. "Type" --> "epTy"
#- Rule2: If the uppercase and lowercase of an English alphabet exist
#  at the same time, they are arranged in the order of oringal input.
#  ie. "BabA" --> "aABb"
#- Rule3: non English alphabet remain in their original position.
#  ie. "By?e" --> "Be?y"

#def sort_string(s)
#    s.array = s.split("")
#end


#You are given an array (which will have a length of at least 3, but could be very large) containing integers. The array is either entirely comprised of odd integers or entirely comprised of even integers except for a single integer N. Write a method that takes the array as an argument and returns N.
#
#For example:
#
#[2, 4, 0, 100, 4, 11, 2602, 36]
#
#Should return: 11
#
#[160, 3, 1719, 19, 11, 13, -21]
#
#Should return: 160

#def is_even?(n)
#    even = false
#    if n > 0
#        if n%2 == 0
#            even = true
#        end
#    else
#        pos = n - (2*n)
#        if pos%2 == 0
#            even = true
#        end
#    end
#    even
#end
#
#def find_outlier(integers)
#    outlier = nil
#    even_arr = false
#    integer_slice = integers[0..2]
#    even_count = 0
#    odd_count = 0
#    integer_slice.each do |i|
#        if is_even?(i)
#            even_count += 1
#        else
#            odd_count += 1
#        end
#    end
#    if even_count >= 2
#        even_arr = true
#    else
#        even_arr = false
#    end
#    
#    if even_arr == true
#        x = 0
#        while x < integers.size
#            if is_even?(integers[x]) == false
#                outlier = integers[x]
#                break
#            end
#            x += 1
#        end
#    else
#        y = 0
#        while y < integers.size
#            if is_even?(integers[y])
#                outlier = integers[y]
#                break
#            end
#            y += 1
#        end
#    end
#    outlier
#end
#
#
#puts(find_outlier([2, 4, 0, 100, 4, 11, 2602, 36]) == 11)
#puts(find_outlier([160, 3, 1719, 19, 11, 13, -21]) == 160)
#    
##puts(is_even?(-21))
##puts(is_even?(-22))



#How this cipher works
#
#It looks at the letter, and sees it's index in the alphabet, the alphabet being a-z, if you didn't know. If it is odd, it is replaced with 1, if it's even, its replaced with 0. Note that the index should start from 0. Also, if the character isn't a letter, it remains the same.
#Multiple sentences may also have the same result.
#    
#Example
#
#encode("Hello World!") -> "10110 00111!"
#This is because H's index is 7, which is odd, so it is replaced by 1, and so on.
#
#Have fun (en)coding!

#def encode(plaintext)
#    alpha_hash = {"a"=>0, "b"=>1, "c"=>2, "d"=>3, "e"=>4, "f"=>5, "g"=>6, "h"=>7, "i"=>8, "j"=>9, "k"=>10, "l"=>11, "m"=>12,
#                  "n"=>13, "o"=>14, "p"=>15, "q"=>16, "r"=>17, "s"=>18, "t"=>19, "u"=>20, "v"=>21, "w"=>22, "x"=>23, "y"=>24, "z"=>25}
#    str_arr = plaintext.split(' ')
#    x = 0
#    arr = []
#    #pattern =~ /[A-Za-z]/
#    while x < str_arr.size
#        current = str_arr[x].downcase
#        current_arr = current.split("")
#        y = 0
#        final = ""
#        while y < current_arr.size
#            curr = current_arr[y]
#            if curr =~ /[A-Za-z]/
#                if (alpha_hash[curr])%2 == 0
#                    final += "0"
#                else
#                    final += "1"
#                end
#            else
#               final += curr 
#            end
#            y += 1
#        end
#        arr.push(final)
#        x += 1
#    end
#    final_str = arr.join(' ')
#    final_str
#end
#
#puts(encode("Hello World!") == "10110 00111!")

#Find the difference between two collections. The difference means that either the character is present in one collection or it is present in other, but not in both. Return a sorted set with difference.
#
#The collections can contain any character and can contain duplicates.
#
#For instance:
#
#A = [a,a,t,e,f,i,j]
#
#B = [t,g,g,i,k,f]
#
#difference = [a,e,g,j,k]


#def difference(arr1, arr2)
#    diff = []
#    x = 0
#    y = 0
#    while x < arr1.size
#        current = arr1[x]
#        if arr2.include?(current) == false
#            if diff.include?(current) == false
#                diff.push(current)
#            end
#        end
#        x += 1    
#    end
#    
#    while y < arr2.size
#        curr = arr2[y]
#        if arr1.include?(curr) == false
#            if diff.include?(curr) == false
#                diff.push(curr)
#            end
#        end
#        y += 1    
#    end
#    diff
#end

#def diff(a, b)
#    difference = []
#    x = 0
#    y = 0
#    while x < a.size
#        current = a[x]
#        if b.include?(current) == false
#            if difference.include?(current) == false
#                difference.push(current)
#            end
#        end
#        x += 1    
#    end
#    
#    while y < b.size
#        curr = b[y]
#        if a.include?(curr) == false
#            if difference.include?(curr) == false
#                difference.push(curr)
#            end
#        end
#        y += 1    
#    end
#    sorted_difference = difference.sort
#    sorted_difference
#end
#
#
#a = ["a","b","z","d","e","d"]
#b = ["a","b", "j","j"]
#
#puts(diff(a,b) == ["d","e","j","z"])
#
#

#def missing(nums, str)
#    nums_sort = nums.sort
#    str_one = str.delete(' ')
#    str_lower = str_one.downcase
#    str_final = ""
#    x = 0
#    while x < nums_sort.size
#        current = nums_sort[x]
#        if current < str_lower.size
#            str_final = str_final + str_lower[current]
#        else
#            str_final = ("No mission today")
#        end
#        puts str_final
#        x += 1  
#    end
#    str_final
#end
#
#puts(missing([5, 0, 3], "I love you") == "ivy")
#puts(missing([29, 31, 8], "The quick brown fox jumps over the lazy dog") == "bay")
#puts(missing([12, 4, 6], "Good Morning") == "No mission today")

#Why can't everything be a taco? We're going to attempt that here, turning every word we find into the taco bell recipe with each ingredient.
#
#We want to input a word as a string, and return a list representing that word as a taco.
#
#Key
#
#all vowels = beef
#
#t = tomato
#
#l = lettuce
#
#c = cheese
#
#g = guacamole
#
#s = salsa
#
#NOTE
#We do not care about case here. 'S' is therefore equivalent to 's' in our taco.
#
#Ignore all other letters; we don't want our taco uneccesarily clustered or else it will be too difficult to eat.
#
#Note that no matter what ingredients are passed, our taco will always have a shell.

#def tacofy(word)
#    word_arr = word.downcase.split("")
#    vowels = ["a", "e", "i", "o", "u"]
#    x = 0
#    final_arr = ["shell"]
#    while x < word_arr.size
#        current = word_arr[x]
#        if vowels.include?(current)
#            final_arr.push("beef")
#        elsif current == "t"
#            final_arr.push("tomato")
#        elsif current == "l"
#            final_arr.push("lettuce")
#        elsif current == "c"
#            final_arr.push("cheese")
#        elsif current == "g"
#            final_arr.push("guacamole")
#        elsif current == "s"
#            final_arr.push("salsa")
#        end
#        x += 1
#    end
#    final_arr.push("shell")
#    final_arr
#end
#
#
#puts(tacofy("")==['shell', 'shell'])
#puts(tacofy("a") == ['shell', 'beef', 'shell'])
#puts(tacofy("ggg") == ['shell', 'guacamole', 'guacamole', 'guacamole', 'shell'])
#puts(tacofy("ogl") == ['shell', 'beef', 'guacamole', 'lettuce', 'shell'])
#puts(tacofy("ydjkpwqrzto") == ['shell', 'tomato', 'beef', 'shell'])


#A series or sequence of numbers is usually the product of a function and can either be infinite or finite.
#
#In this kata we will only consider finite series and you are required to return a code according to the type of sequence:
#
#Code	Type	Example
#0
#unordered
#[3,5,8,1,14,3]
#1
#strictly increasing
#[3,5,8,9,14,23]
#2
#not decreasing
#[3,5,8,8,14,14]
#3
#strictly decreasing
#[14,9,8,5,3,1]
#4
#not increasing
#[14,14,8,8,5,3]
#5
#constant
#[8,8,8,8,8,8]
#You can expect all the inputs to be non-empty and completely numerical arrays/lists - no need to validate the data; do not go for sloppy code, as rather large inputs might be tested.
#
#Try to achieve a good solution that runs in linear time; also, do it functionally, meaning you need to build a pure function or, in even poorer words, do NOT modify the initial input!


#def sequence_classifier(arr)
#    classified_as = nil
#    arr_sort = arr.sort
#    arr_desc = arr_sort.reverse
#    if is_constant?(arr) == true
#        classified_as = 5
#    elsif (arr.sort == arr)  and (no_repeat_arr?(arr) == true)
#        classified_as = 1
#    elsif (arr.sort == arr)
#        classified_as = 2
#    elsif (arr == arr_desc) and (no_repeat_arr?(arr) == true)
#        classified_as = 3
#    elsif (arr == arr_desc)
#        classified_as = 4
#    else
#        classified_as = 0
#    end
#    classified_as
#end
#
#def no_repeat_arr?(arr)
#    x = 0
#    no_repeat = true
#    while x < arr.size
#        current = arr[x]
#        if arr.count(arr[x]) > 1
#            no_repeat = false
#            break
#        end
#        x += 1
#    end
#    no_repeat
#end
#
#def is_constant?(arr)
#    constant = true
#    x = 0
#    while x < (arr.size-1)
#        if arr[x] != arr[x+1]
#            constant = false
#            break
#        end
#        x += 1
#    end
#    constant
#end
#
#puts(sequence_classifier([3,5,8,1,14,3]) == 0)
#puts(sequence_classifier([3,5,8,9,14,23]) == 1)
#puts(sequence_classifier([3,5,8,8,14,14]) == 2)
#puts(sequence_classifier([14,9,8,5,3,1]) == 3)
#puts(sequence_classifier([14,14,8,8,5,3]) == 4)
#puts(sequence_classifier([8,8,8,8,8,8]) == 5)
#puts(sequence_classifier([8,9]) == 1)
#puts(sequence_classifier([8,8,8,8,8,9]) == 2)
#puts(sequence_classifier([9,8]) == 3)
#puts(sequence_classifier([9,9,9,8,8,8]) == 4)
#
##puts(no_repeat_arr?([8,8,87,89]) == false)
##puts(no_repeat_arr?([3,5,8,14,1403]) == true)
##puts(is_constant?([7,7,7,7]) == true)
##puts(is_constant?([2,1,56,923]) == false)

#Story
#
#Jumbo Juice makes a fresh juice out of fruits of your choice.Jumbo Juice charges $5 for regular fruits and $7 for special ones. Regular fruits are Banana, Orange, Apple, Lemon and Grapes. Special ones are Avocado, Strawberry and Mango. Others fruits that are not listed are also available upon request. Those extra special fruits cost $9 per each. There is no limit on how many fruits she/he picks.The price of a cup of juice is the mean of price of chosen fruits. In case of decimal number (ex. $5.99), output should be the nearest integer (use the standard rounding function of your language of choice).
#Input
#
#The function will receive an array of strings, each with the name of a fruit. The recognition of names should be case insensitive. There is no case of an enmpty array input.
#Example
#
#['Mango', 'Banana', 'Avocado'] //the price of this juice bottle is (7+5+7)/3 = $6($6.333333...)

#def mix_fruit(arr)
#    fruit_hash = {"banana"=>5, "orange"=>5, "apple"=>5, "lemon"=>5, "grapes"=>5, "avocado"=>7, "strawberry"=>7, "mango"=>7}
#    x = 0
#    price_arr = []
#    while x < arr.size
#        current = arr[x].downcase
#        if fruit_hash.has_key?(current)
#            price_arr.push(fruit_hash[current])
#        else
#            price_arr.push(9)
#        end
#        x += 1
#    end
#    total = price_arr.reduce{|sum,num| sum+num}
#    puts "total is:",total
#    puts "price array is:",price_arr
#    n = price_arr.size
#    puts "array size is:",n
#    average = (total.to_f/n).round
#    average
#end
#
#
##puts(mix_fruit(["banana","mango","avocado"]) == 6)
##puts(mix_fruit(["melon","Mango","kiwi"]) == 8)
##puts(mix_fruit(["watermelon","cherry","avocado"]) == 8)
##puts(mix_fruit(["watermelon","lime","tomato"]) == 9)
##puts(mix_fruit(["blackBerry","coconut","avocado"]) == 8)
##puts(mix_fruit(["waterMelon","mango"]) == 8)
##puts(mix_fruit(["watermelon","pEach"]) == 9)
##puts(mix_fruit(["watermelon","Orange","grapes"]) == 6)
##puts(mix_fruit(["watermelon"]) == 9)
##puts(mix_fruit(["BlACKbeRrY","cOcONuT","avoCaDo"]) == 8)
#
#puts(mix_fruit(["bANAnA", "AvocAdO", "PEAr", "OranGE", "pEAch", "strawBErRy", "KiWI", "bErRy", "mango", "PapaYa", "stRAWBERRy"]) == 8) 


#As the name may already reveal, it works basically like a Fibonacci, but summing the last 3 (instead of 2) numbers of the sequence to generate the next
#
#So, if we are to start our Tribonacci sequence with [1,1,1] as a starting input (AKA signature), we have this sequence:
#
#[1,1,1,3,5,9,17,31,...]
#
#But what if we started with [0,0,1] as a signature? As starting with [0,1] instead of [1,1] basically shifts the common Fibonacci sequence by once place, you may be tempted to think that we would get the same sequence shifted by 2 places, but that is not the case and we would get:
#
#[0,0,1,1,2,4,7,13,24,...]
#    
#Signature will always contain 3 numbers; n will always be a non-negative number; if n==0, then return an empty array and be ready for anything else which is not clearly specified ;)

#def tribonacci(signature,n)
#    tribonacci_arr = [signature[0], signature[1], signature[2]]
#    if n == 0
#        return []
#    elsif n == 1
#        return [signature[0]]
#    elsif n == 2
#        return [signature[0], signature[1]]
#    elsif n == 3
#        return [signature[0], signature[1], signature[2]]
#    else
#        a = tribonacci_arr[0]
#        b = tribonacci_arr[1]
#        c = tribonacci_arr[2]
#        x = 3
#        while x < n
#            d = a + b + c
#            tribonacci_arr.push(d)
#            a = b
#            b = c
#            c = d
#            x += 1
#        end
#        return tribonacci_arr
#    end
#end
#
#puts(tribonacci([1,1,1],10) == [1,1,1,3,5,9,17,31,57,105])
#puts(tribonacci([0,0,1],10) == [0,0,1,1,2,4,7,13,24,44])
#puts(tribonacci([0,1,1],10) == [0,1,1,2,4,7,13,24,44,81])
#puts(tribonacci([1,0,0],10) == [1,0,0,1,1,2,4,7,13,24])
#puts(tribonacci([0,0,0],10) == [0,0,0,0,0,0,0,0,0,0])
#puts(tribonacci([1,2,3],10) == [1,2,3,6,11,20,37,68,125,230])
#puts(tribonacci([3,2,1],10) == [3,2,1,6,9,16,31,56,103,190])
#puts(tribonacci([1,1,1],1) == [1])
#puts(tribonacci([300,200,100],0) == [])
#puts(tribonacci([0.5,0.5,0.5],30) ==[0.5,0.5,0.5,1.5,2.5,4.5,8.5,15.5,28.5,52.5,96.5,177.5,326.5,600.5,1104.5,2031.5,3736.5,6872.5,12640.5,23249.5,42762.5,78652.5,144664.5,266079.5,489396.5,900140.5,1655616.5,3045153.5,5600910.5,10301680.5])

#Sectional Array Sort
#=====================

#Example:
#sect_sort([1, 2, 5, 7, 4, 6, 3, 9, 8], 2) //=> [1, 2, 3, 4, 5, 6, 7, 8, 9]
#sect_sort([9, 7, 4, 2, 5, 3, 1, 8, 6], 2, 5) //=> [9, 7, 1, 2, 3, 4, 5, 8, 6]
#sect_sort($array, $start, $length);

#def sect_sort(array, start, length=0)
#    arr_slice_sort = []
#    final_arr = []
#    if length == 0
#        length = array.size
#        arr_slice_sort = array[start..length]
#        arr_sorted = arr_slice_sort.sort
#        arr_unsorted = array[0..(start-1)] 
#        final_arr = arr_unsorted + arr_sorted
#    else
#        last_sorted_index = start + (length-1)
#        arr_slice_sort = array[start..last_sorted_index]
#        arr_sorted = arr_slice_sort.sort
#        arr_unsorted = array[0..(start-1)] 
#        final_arr = arr_unsorted + arr_sorted + array[(start+length)..(array.size)]  
#    end
#    final_arr
#end
#
#puts(sect_sort([1, 2, 5, 7, 4, 6, 3, 9, 8], 2)== [1, 2, 3, 4, 5, 6, 7, 8, 9])
#puts(sect_sort([9, 7, 4, 2, 5, 3, 1, 8, 6], 2, 5) == [9, 7, 1, 2, 3, 4, 5, 8, 6])

#Longest word --- Code Wars

#def longest_word(string_of_words)
#    word_arr = string_of_words.split(' ')
#    x = 0
#    longest_len = 0
#    longest_word = ""
#    while x < word_arr.size
#        current = word_arr[x]
#        curr_len = current.size
#        if curr_len >= longest_len
#            longest_len = curr_len
#            longest_word = current
#        end
#        x += 1
#    end
#    longest_word
#end
#
#
#puts(longest_word('a b c d each') == "each" )
#puts(longest_word('each step') == "step" )
#puts(longest_word('forward each step going') == "forward" )
#puts(longest_word('brings each step going') == "brings" )
#puts(longest_word('brings each opportunity step going') == "opportunity" )


#Coderbyte challenges
#=====================

#def MaxSubarray(arr)
#    x = 0
#    max_sum = 0
#    while x < arr.size
#        y = 1
#        while y < (arr.size)
#            sub_arr = arr[x..y]
#            curr_sum = sub_arr.reduce(0){|sum, num| sum + num}
#            if curr_sum > max_sum
#                max_sum = curr_sum
#            end
#            y += 1
#        end
#        x += 1
#    end
#  
#  return max_sum
#         
#end

#Incorrect test cases

#1. For the input (-4, -5, -6) your output was incorrect. The correct answer is -4.
#2. For the input (10, -2) your output was incorrect. The correct answer is 10.

#array addition(Check if any combination of elements in the array can add up to give the largest element in the array)

#def array_addition(arr)
#    arr_add = false
#    arr_sort = arr.sort
#    largest = arr_sort.pop()
#    (2..arr.size).each do |i|
#        arr.combination(i).each do |comb|
#            sum = comb.reduce(0){|sum, num| sum + num}
#            puts("comb is: ",comb,"sum is: ", sum)
#            if sum == largest
#                arr_add = true
#                return arr_add
#            end
#        end
#    end
#  return arr_add 
#end
#
#
##puts(array_addition([2,6,18]) == false)
#puts(array_addition([10,12,500,1,-5,1,0]))# == false)
##puts(array_addition([-2,-3,-4,-1,100]) == false)
##puts(array_addition([1,1,1,1,6]) == false)
##puts(array_addition([2,4,6,12,92]) == false)

#Challenge
#Using the Ruby language, have the function ArithGeoII(arr) take the array of numbers stored in arr and return the string "Arithmetic" if the sequence follows an arithmetic pattern or return "Geometric" if it follows a geometric pattern. If the sequence doesn't follow either pattern return -1. An arithmetic sequence is one where the difference between each of the numbers is consistent, where as in a geometric sequence, each term after the first is multiplied by some constant or common ratio. Arithmetic example: [2, 4, 6, 8] and Geometric example: [2, 6, 18, 54]. Negative numbers may be entered as parameters, 0 will not be entered, and no array will contain all the same elements. 
#Sample Test Cases
#Input:5,10,15
#Output:"Arithmetic"
#
#Input:2,4,16,24
#Output:-1

#def ArithGeoII(arr)
#    diff = arr[1]-arr[0]
#    ratio = arr[1]/arr[0]
#    x = 0
#    y = 0
#    arith = true
#    geo = true
#    arith_geo = -1
#    while x < (arr.size-1)
#        if arr[x+1] - arr[x] != diff
#            arith = false
#            break
#        end
#        x += 1
#    end
#    
#    while y < (arr.size-1)
#        if arr[y+1]/arr[y] != ratio
#            geo = false
#            break
#        end
#        y += 1
#    end
#    if arith == true
#        arith_geo = "Arithmetic"
#        return arith_geo
#    elsif geo == true
#        arith_geo = "Geometric"
#        return arith_geo
#    else
#        return -1
#    end
#end
#
#puts(ArithGeoII([2,6,18,54]) == "Geometric")
#puts(ArithGeoII([100,200,400,800,1600]) == "Geometric")
#puts(ArithGeoII([5,10,20,40,80]) == "Geometric")

#Challenge
#Using the Ruby language, have the function BinaryConverter(str) return the decimal form of the binary value. For example: if 101 is passed return 5, or if 1000 is passed return 8. 
#Sample Test Cases
#Input:"100101"
#Output:"37"
#
#Input:"011"
#Output:"3"

#def BinaryConverter(str)
#    str_arr = str.split("")
#    pow_arr = []
#    x = str_arr.size - 1
#    y = 0
#    while x >= 0
#        current = str_arr[x].to_i
#        pow_2 = (2**(y))*current
#        pow_arr.push(pow_2)
#        y += 1
#        x -= 1
#    end
##    puts pow_arr
#    decimal_no = pow_arr.reduce(0){|sum,num| sum+num}
#    decimal_no     
#end
#
#
#puts(BinaryConverter("100101"))# == 37)


#Challenge
#Using the Ruby language, have the function LetterCount(str) take the str parameter being passed and return the first word with the greatest number of repeated letters. For example: "Today, is the greatest day ever!" should return greatest because it has 2 e's (and 2 t's) and it comes before ever which also has 2 e's. If there are no words with repeating letters return -1. Words will be separated by spaces. 
#Sample Test Cases
#Input:"Hello apple pie"
#Output:Hello
#
#Input:"No words"
#Output:-1

#def LetterCount(str)
#    str_arr = str.split(' ')
#    x = 0
#    most_repeat_word = ""
#    max_count = 0
#    while x < str_arr.size
#        current = str_arr[x]
#        current_arr = current.split("")
#        y = 0
#        while y < current_arr.size
#            curr = current_arr[y]
#            count = current_arr.count(curr)
#            if (count > 1)
#                if (count > max_count)
#                    max_count = count
#                    most_repeat_word = current
#                end
#            end
#            y += 1
#        end
#        x += 1
#    end
#    if most_repeat_word == ""
#        most_repeat_word = -1
#    end
#    most_repeat_word
#end
#
#puts(LetterCount("Hello apple pie") == "Hello")
#puts(LetterCount("No words") == -1)
#puts(LetterCount("the dog and cat") == -1)
#puts(LetterCount("a bat cat rat") == -1)


#def CaesarCipher(str,num)
#  alpha_arr_lowcase = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
#  alpha_arr_upcase = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
#  str_arr = str.split(' ')
#  final_arr = []
#  final_ceaser = ""
#  x = 0
#  while x < str_arr.size
#    word = str_arr[x]
#    word_arr = word.split("")
#    y = 0
#    ceaser_word_arr = []
#    ceaser_word = ""
#    while y < word_arr.size
#        current = word_arr[y]
#        new_idx = 0
#        if alpha_arr_lowcase.include?(current)
#            curr_idx = alpha_arr_lowcase.index(current)
#            new_idx = curr_idx + num
#            if (new_idx) < alpha_arr_lowcase.size
#                new_ceaser = alpha_arr_lowcase[new_idx]  
#            else
#                new_idx = (curr_idx + num) - 26
#                new_ceaser = alpha_arr_lowcase[new_idx]
#            end
#        elsif alpha_arr_upcase.include?(current)
#            curr_idx = alpha_arr_upcase.index(current)
#            new_idx = curr_idx + num
#            if (new_idx) < alpha_arr_upcase.size
#                new_ceaser = alpha_arr_upcase[new_idx]
#            else
#                new_idx = (curr_idx + num) - 26
#                new_ceaser = alpha_arr_upcase[new_idx]
#            end
#        else
#            new_ceaser = current 
#        end
#        ceaser_word_arr.push(new_ceaser)
#        y += 1
#    end
#    ceaser_word = ceaser_word_arr.join('')
#    final_arr.push(ceaser_word)
#    x += 1
#  end
#  final_ceaser = final_arr.join(' ')
#  final_ceaser
#end
#
##Test cases
#puts(CaesarCipher("world!", 1) == "xpsme!")
#puts(CaesarCipher("coderBYTE",2))# == "eqfgtDAVG")
#puts(CaesarCipher("dogs",8))# == "lwoa")
#puts(CaesarCipher("byte",13))# == "olgr")
#puts(CaesarCipher("byte-dash",0) == "byte-dash")

#str = "abcd"
#str.chars.each do |x|
#    puts x.next
#end

#def RunLength(str)
#    str_arr = str.chars
#    x = 0
#    final_str = ""
#    count = 1
#    while x < (str_arr.size - 1)
#        current = str_arr[x]
#        if str_arr[x] == str_arr[x+1]
#            count += 1
#        else
#            final_str += count.to_s + current
#            count = 1
#        end
#        x += 1
#    end
##    if x == (str_arr.size-1)
##        if str_arr[x] == str_arr[x-1]
##            count += 1
##            final_str += count.to_s + str_arr[x]
##        else
##            final_str += 1.to_s + str_arr[x]
##        end
##    end
#    
#    if x == str_arr.size-1
#        final_str += count.to_s + str_arr[x]
#    end
#  return final_str 
#         
#end
#
#
#
#puts(RunLength("aabbcc"))# == "2a2b2c")
#
#
#Using the Ruby language, have the function StringReduction(str) take the str parameter being passed and return the smallest number you can get through the following reduction method. The method is: Only the letters a, b, and c will be given in str and you must take two different adjacent characters and replace it with the third. For example "ac" can be replaced with "b" but "aa" cannot be replaced with anything. This method is done repeatedly until the string cannot be further reduced, and the length of the resulting string is to be outputted. For example: if str is "cab", "ca" can be reduced to "b" and you get "bb" (you can also reduce it to "cc"). The reduction is done so the output should be 2. If str is "bcab", "bc" reduces to "a", so you have "aab", then "ab" reduces to "c", and the final string "ac" is reduced to "b" so the output should be 1. 
#Sample Test Cases
#Input:"abcabc"
#Output:2
#
#Input:"cccc"
#Output:4
    
#def StringReduction(str)
#    
#  # code goes here
#  return str 
#         
#end



#def LetterChanges(str)
#    new_str = ""
#    new_char = ""
#    alpha_arr = ('a'..'z').to_a
#    vowels = ['a', 'e', 'i', 'o', 'u']
#    str.chars.each do |a_char|
#        if alpha_arr.include?(a_char)
#            new_char = a_char.next
#        else
#            new_char = a_char
#        end
#        new_str += new_char
#    end
#    new_str_arr = new_str.chars
#    new_str_arr.each do |each_one|
#        if vowels.include?(each_one)
#            each_one.upcase!
#        end
#    end
#    new_str = new_str_arr.join("")
#    new_str
#end
#
#
#puts(LetterChanges("hello world") == "Ifmmp xpsmE")


#def OneDecremented(num)
#    one_less_count = 0
#    num_arr = num.to_s.chars
#    x = 0
#    while x < (num_arr.size-1)
#        if ((num_arr[x].to_i - num_arr[x+1].to_i) == 1)
#            one_less_count += 1
#            puts "num arr of x is: ",num_arr[x]," and one less count is: ", one_less_count
#        end
#        x += 1
#    end
#  return one_less_count
#end
#
#puts(OneDecremented(9876541110))# == 6)
#
#
#
#Have the function NumberStream(str) take the str parameter being passed which will contain the numbers 2 through 9, and determine if there is a consecutive stream of digits of at least N length where N is the actual digit value. If so, return the string true, otherwise return the string false. For example: if str is "6539923335" then your program should return the string true because there is a consecutive stream of 3's of length 3. The input string will always contain at least one digit. 

#Use the Parameter Testing feature in the box below to test your code with different arguments.

#def NumberStream(str)
#    num_stream = false
#    str_arr = str.chars 
#    x = 0
#    count = 1
#    while x < (str_arr.size - 1)
#        current = str_arr[x].to_i
#        if str_arr[x+1] == str_arr[x]
#            count += 1
#        else
#            count = 1
#        end
#        if (count > 1) and (count == current)
#            num_stream = true
#            break
#        end
#        x += 1
#    end
#    return num_stream 
#         
#end



#def EvenPairs(str)
#    alpha = ("a".."z").to_a + ("A".."Z").to_a
#    digits = [0,1,2,3,4,5,6,7,8,9]
#    str_arr = str.chars
#    x = 0
#    while x < (str_arr.size - 1)
#        current = str_arr[x]
#        if alpha_arr.include?(current) == false
#            if current.to_i % 2 == 0
#                
#            end
#        end
#        x += 1
#    end
#  # code goes here
#  return str 
#         
#end

#def PowerSetCount(arr)
#    x = 0
#    power_set = []
#    power_set_count = 0
#    while x <= arr.size
#        power_set.push(arr.combination(x).to_a)
#        x += 1
#    end
#    power_set_count = power_set.flatten(1).size
#    return power_set_count
#end
#
#puts(PowerSetCount([1,2,3,4]))#

#def encrypt(string)
#    x = 0
#    str_arr = string.chars
#    final_arr = []
#    count = 1
#    while x < (str_arr.size-1)
#        current = str_arr[x]
#        if current == str_arr[x+1]
#            count += 1
#        else
#            count_arr = [current, count]
#            final_arr.push(count_arr)
#            count = 1
#        end
#        x += 1
#    end
#    if x == (str_arr.size - 1)
#        final_arr.push([str_arr[x],count])
#    end
#    final_arr
#end
#
#puts(encrypt("aaabbcbbaaa")== [["a", 3],["b", 2],["c", 1],["b", 2],["a", 3]])
#
#puts(encrypt("aaaaaaaaaa") == [["a", 10]])
#puts(encrypt("") == [])
#puts(encrypt("aaaaaaaaaab") == [["a", 10], ["b", 1]])

#******Start of Code*******************
#def StringPeriods(str)
#    all_sub_strings = get_sub_strings(str)
#    x = 0
#    y = 0
#    while x < all_sub_strings.size
#        x += 1
#    end
#  return str 
#         
#end
#
#def get_sub_strings(str)
#    str_arr = str.chars 
#    n = str_arr.size/2
#    sub_string_arr = []
#    x = 0
#    while x < str_arr.size/2
#        sub_str = str_arr.combination(x)
#        sub_str_arr.push(sub_str.flatten(1))
#        x += 1
#    end
#    sub_str_arr
#end
#*********End of Code**********************

# Write a function word_unscrambler that takes two inputs: a scrambled
# word and a dictionary of real words.  Your program must then output
# all words that our scrambled word can unscramble to.
#
# Hint: To see if a string `s1` is an anagram of `s2`, split both
# strings into arrays of letters. Sort the two arrays. If they are
# equal, then they are anagrams.
#
# Difficulty: 3/5

#def word_unscrambler(str, words)
#    final_arr = []
#    x = 0
#    while x < words.size
#        current_word = words[x]
#        if is_anagram?(str, current_word)
#            final_arr.push(current_word)
#        end
#        x += 1
#    end
#    final_arr
#end
#
#def is_anagram?(str, word)
#    anagram = false
#    str_sort = str.chars.sort
#    word_sort = word.chars.sort
#    if str_sort == word_sort
#        anagram = true
#    end
#    anagram
#end
#
#puts("\nTests for #word_unscrambler")
#puts("===============================================")
#    puts "word_unscrambler(\"cat\", [\"tac\"]) == [\"tac\"]: "  + (word_unscrambler("cat", ["tac"]) == ["tac"]).to_s
#    puts "word_unscrambler(\"cat\", [\"tom\"]) == []: "  + (word_unscrambler("cat", ["tom"]) == []).to_s
#    puts "word_unscrambler(\"cat\", [\"tic\", \"toc\", \"tac\", \"toe\"]) == [\"tac\"]: "  + (word_unscrambler("cat", ["tic", "toc", "tac", "toe"]) == ["tac"]).to_s
#    puts "word_unscrambler(\"cat\", [\"scatter\", \"tac\", \"ca\"] ) == [\"tac\"]: "  + (word_unscrambler("cat", ["scatter", "tac", "ca"] ) == ["tac"]).to_s
#    puts "word_unscrambler(\"turn\", [\"numb\", \"turn\", \"runt\", \"nurt\"]) == [\"turn\", \"runt\", \"nurt\"]: "  + (word_unscrambler("turn", ["numb", "turn", "runt", "nurt"]) == ["turn", "runt", "nurt"]).to_s
#
#puts("===============================================")


#def ordered_vowel_words(str)
#    str_arr = str.split(' ')
#    final_arr = []
#    final_str = ""
#    str_arr.each do |word|
#        if ordered_vowel_word(word)
#            final_arr.push(word)
#        end
#    end
#    final_str = final_arr.join(' ')
#    final_str
#end
#
#def ordered_vowel_word(str)
#    ordered = true
#    vowels = ["a", "e", "i", "o", "u"]
#    str_arr = str.chars
#    x = 0
#    idx = 0
#    while x < str_arr.size
#        current = str_arr[x]
#        if vowels.include?(current)
#            curr_idx = vowels.index(current)
#            if curr_idx >= idx
#                idx = curr_idx
#            else
#                ordered = false
#                break
#            end
#        end
#        x += 1
#    end
#    ordered
#end
#
#
#puts("\nTests for #ordered_vowel_words")
#puts("===============================================")
#    puts "ordered_vowel_words(\"amends\") == \"amends\": "  + (ordered_vowel_words("amends") == "amends").to_s
#    puts "ordered_vowel_words(\"complicated\") == \"\": "  + (ordered_vowel_words("complicated") == "").to_s
#    puts "ordered_vowel_words(\"afoot\") == \"afoot\": "  + (ordered_vowel_words("afoot") == "afoot").to_s
#    puts "ordered_vowel_words(\"ham\") == \"ham\": "  + (ordered_vowel_words("ham") == "ham").to_s
#    puts "ordered_vowel_words(\"crypt\") == \"crypt\": "  + (ordered_vowel_words("crypt") == "crypt").to_s
#    puts "ordered_vowel_words(\"o\") == \"o\": "  + (ordered_vowel_words("o") == "o").to_s
#    puts "ordered_vowel_words(\"tamely\") == \"tamely\": "  + (ordered_vowel_words("tamely") == "tamely").to_s
#    
#    phrase = "this is a test of the vowel ordering system"
#    result = "this is a test of the system"
#    puts "ordered_vowel_words(phrase) == result: "  + (ordered_vowel_words(phrase) == result).to_s
#puts("===============================================")

#phrase = "this is a test of the vowel ordering system"
#result = "this is a test of the system"
#puts(ordered_vowel_words(phrase) == result)
#puts(ordered_vowel_words("amends") == "amends")



#APPACADEMY FINAL ONLINE CODING TEST
#====================================



#def combine_arrays(arr1, arr2)
#    x = 0
#    y = 0
#    comb_arr = []
#    while x < arr1.size
#        if(arr1[x].to_i < arr2[y].to_i)
#            comb_arr.push(arr1[x])
#        else
#            comb_arr.push(arr2[y])
#        end
#        x += 1
#    end
#    comb_arr
#end
#
#puts(combine_arrays([1, 3, 5], [2, 4, 6]))# == [1, 2, 3, 4, 5, 6])
#
#
#
##puppy_golden_age
##
##Each year, the Census Bureau records the change in the population of puppies. In year zero, if 10 puppies are born and 5 die (sad!), there are 5 more puppies. In year one, if 10 puppies are born and 13 die, there are 3 fewer puppies. An array of changes in puppy populations would look like [5, -3, ...].
##
##I give you an array of annual changes in the puppy population. I want to find the Puppy Golden Age, the years in which the cumulative change in the puppy population was greatest. For instance, if the array is [100, -101, 200, -3, 1000], the Puppy Golden Age existed between years 2 and 4 (representing [200, -3, 1000]), since that's the time period during which the most puppies were born.
##
##Write a method, puppy_golden_age, which should return the start and end indices of the Puppy Golden Age:
##
##puppy_golden_age([100, -101, 200, -3, 1000]) == [2, 4]
##puppy_golden_age([5, 3, -5, 1, 19, 2, -4]) == [0, 5]
##Do not worry about the speed of your solution.
##
##Hints: iterate through all the subarrays; compute the sum of each subarray and compare to the best Puppy Golden Age seen so far. A subarray is defined by its start index and end indices, so iterate through all pairs of indices. You should probably use two loops, one nested inside the other.
#
#def puppy_golden_age(arr)
#    all_sub_arrays = []
#    x = 0
#    while x < arr.size
#        y = x+1
#        while y < arr.size
#            sub_arr = arr[x..y]
#            all_sub_arrays.push(sub_arr)
#            y += 1
#        end
#        x += 1
#    end
#    i = 0
#    largest_sum = 0
#    largest_sub_arr = []
#    while i < all_sub_arrays.size
#        sub_arr_sum = all_sub_arrays[i].reduce(0){|sum, num| sum+num}
#        if sub_arr_sum > largest_sum
#            largest_sum = sub_arr_sum
#            largest_sub_arr = all_sub_arrays[i]
#        end
#        i += 1
#    end
#    puts(largest_sub_arr)
#    start_idx = arr.index(largest_sub_arr[0])
#    end_idx = arr.index(largest_sub_arr.pop)
#    golden_arr = [start_idx,end_idx]
#    golden_arr
#end
#
#
#puts(puppy_golden_age([100, -101, 200, -3, 1000]))#== [2, 4])
##puts(puppy_golden_age([5, 3, -5, 1, 19, 2, -4]) == [0, 5])
#
#
#

#PROJECT EULER
#===============

#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
#Find the sum of all the multiples of 3 or 5 below 1000.

#def sum_3_5(n)
#    x = 3
#    multiple_sum = 0
#    while x < n
#        current = x
#        if (current % 3 == 0) or (current % 5 == 0)
#            multiple_sum += current
#        end
#        x += 1
#    end
#    multiple_sum
#end
#
#puts(sum_3_5(10) == 23)
#puts(sum_3_5(1000))


#Even Fibonacci numbers
#Problem 2 
#Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
#
#1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
#
#By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

#def fibonacci(n)
#    first = 1
#    second = 2
#    third = first + second
#    fib_arr = [first, second, third]
#    while third < n
#        fib_arr.push(third)
#        first = second
#        second = third
#        third = first + second
#    end
#    #puts("Fib arr is: ", fib_arr)
#    x = 0
#    even_sum = 0
#    while x < fib_arr.size
#        current = fib_arr[x]
#        if current % 2 == 0
#            even_sum += current
#        end
#        x += 1
#    end
#    even_sum
#end
#    
#puts(fibonacci(10))
#puts(fibonacci(4000000))

#def PrimeChecker(num)
#    check = 0
#    num_arr = num.to_s.chars
#    perm = num_arr.permutation.to_a
#    i = 0
#    print(perm)
#    while i < perm.size
#        current = (perm[i].join("")).to_i
#        puts(current)
#        if prime?(current)
#            puts("this number", current, " is prime",prime?(current))
#            check = 1
#            break
#        end
#        i += 1
#    end
#    check
#end
# 
#def prime?(num)
#    prime = false
#    factor_arr = factors(num)
#    if factor_arr.size == 2
#        prime = true
#    end
#end
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
##puts(PrimeChecker(98))
##puts(PrimeChecker(9))
#puts(PrimeChecker(100))

#def DashInsertII(num)
#    num_arr = num.to_s.chars
#    i = 0
#    final_str = ""
#    while i < (num_arr.size-1)
#        current = num_arr[i].to_i
#        #even
#        if (current%2 == 0) and (current != 0) 
#            if (((num_arr[i+1].to_i)%2) == 0) and (num_arr[i+1].to_i != 0)
#                print true
#                final_str += num_arr[i] + "*"
#            else
#                final_str += num_arr[i]
#            end
#        else
#            if (current != 0) and (num_arr[i+1].to_i%2 == 1) and (num_arr[i+1].to_i != 0)
#                final_str += num_arr[i] + "-"
#            else
#                final_str += num_arr[i]
#            end
#        end
#        i += 1
#    end
#    if i == num_arr.size-1
#        final_str += num_arr[i]
#    end
#    final_str
#end
#
#puts(DashInsertII("10120"))
#puts(DashInsertII("60497642"))


#def SwapII(str)
#    str_cpy = str
#    sub_str = str_cpy.scan(/\d\[a-zA-Z]+\d/)
#    if sub_str != []
#        print(sub_str)
#        sub_str_arr = sub_str[0].chars
#        d1 = sub_str_arr[0]
#        d2 = sub_str_arr[-1]
#        temp = d1
#        d1 = d2
#        d2 = temp
#        new_arr = []
#        new_arr.push(d1.to_s+sub_str_arr[1..-2].join('')+d2.to_s)
#        new_str = new_arr.join('')
#        final_str = str_cpy.gsub(/\d\w+\d/, new_str).swapcase
#    else
#        final_str = str_cpy.swapcase
#    end
#    final_str
#end
#
#puts(SwapII("6coderbyte5"))

#1. For the input "yeahHH" your output was incorrect. The correct answer is YEAHhh.
#2. For the input "i love cAke33&" your output was incorrect. The correct answer is I LOVE CaKE33&.
#3. For the input "yolO11" your output was incorrect. The correct answer is YOLo11.
#4. For the input "123gg))((" your output was incorrect. The correct answer is 123GG))((.

#def NumberSearch(str)
#    num_arr = str.scan(/\d/)
#    alpha_arr = str.scan(/[A-z]/)
#    total = num_arr.inject(0){|sum,n| sum+n.to_i}
#    alphas = (alpha_arr.size).to_f
#    answer = (total/alphas).round
#    answer
#end
#   
#
#puts(NumberSearch("H3ello9-9"))
#

#def TripleDouble(num1,num2)
#    num1_arr = num1.to_s.chars
#    num2_arr = num2.to_s.chars
#    x = 0
#    triple = 0
#    while x < (num1_arr.size-2)
#        current = num1_arr[x]
#        if (current == num1_arr[x+1]) and (current == num1_arr[x+2])
#            triple = current
#            break
#        end
#        x += 1
#    end
#    
#    y = 0
#    triple_double = 0
#    double = 0
#    while y < (num2_arr.size-1)
#        current = num2_arr[y]
#        if (current == num2_arr[y+1]) and (current == triple)
#            double = current
#            triple_double = 1
#            break
#        end
#        y += 1
#    end
#    triple_double   
#end
#
#def StringReduction(str)
#    str_arr = str.chars
#    str_comb_arr = "abc".chars.combination(2).to_a
#    comb_arr = str_comb_arr
#    str_comb_arr.each{|aray| comb_arr.push(aray.reverse)}
#    x = 0
#    final_str_arr = []
#    while x < (str_arr.size-1)
#        if ([str_arr[x],str_arr[x+1]] == ["a","b"]) || ([str_arr[x],str_arr[x+1]] == ["b","a"])
#            final_str_arr.push("c")
#        elsif ([str_arr[x],str_arr[x+1]] == ["b","c"]) || ([str_arr[x],str_arr[x+1]] == ["c","b"])
#            final_str_arr.push("a")
#        elsif ([str_arr[x],str_arr[x+1]] == ["c","a"]) || ([str_arr[x],str_arr[x+1]] == ["a","c"])
#            final_str_arr.push("b")
#        else
#            final_str_arr.push(str_arr[x])
#            final_str_arr.push(str_arr[x+1])
#        end
#        x += 1
#    end
#    final_str_arr.size     
#end


#def CoinDeterminer(num)
#    coin_arr = [1,5,7,9,11] 
#    comb_arr = []
#    x = 1
#    while x <= coin_arr.size
#        comb_arr += coin_arr.combination(x).to_a
#        x += 1
#    end
#    
#    y = 0
#    smallest = coin_arr.size
#    while y < comb_arr.size
#        total = comb_arr[y].inject(0){|sum,n| sum+n}
#        if total == num
#            if comb_arr[y].size < smallest
#                smallest = comb_arr[y].size
#            end
#        end
#        y += 1
#    end
#    smallest
#end
#
#def CoinDeterminer(num)
#    coins = [1,5,7,9,11]
#    count = 0
#    if (num <= 4) && (num>0)
#        return num
#    else
#        coins.each do |coin|
#            while num >= coin
#                count += 1 and num = num - coin
#            end
#        end
#        return count
#    end
#end
#
#puts(CoinDeterminer(26))

#def encrypt(str)
#    str_arr = str.chars
#    x = 0
#    count = 1
#    encrypted_arr = []
#    while x < str_arr.size
#        current = str_arr[x]
#        if current == str_arr[x+1]
#            count += 1
#        else
#            encrypted_arr.push([current,count])
#            count = 1
#        end
#        x += 1
#    end
#    encrypted_arr
#end
#
#print(encrypt("aaabbcbbaaa"))# == [["a", 3],["b", 2],["c", 1],["b", 2],["a", 3]])
#
#puts(encrypt("aaaaaaaaaa") == [["a", 10]])
#puts(encrypt("") == [])

#def one_off_words(word,word_list)
#    y = 0
#    one_off_list = []
#    while y < word_list.size
#        current = word_list[y]
#        if one_off_word(word,current)
#            one_off_list.push(current)
#        end
#        y += 1
#    end
#    one_off_list
#end
#
#def one_off_word(word1,word2)
#    one_off = true
#    word1_arr = word1.chars
#    word2_arr = word2.chars
#    count = 0
#    x = 0
#    while x < word1_arr.size
#        current = word1_arr[x]
#        if current != word2_arr[x]
#            count += 1
#        end
#        x += 1
#    end
#    if count > 1
#        one_off = false
#    end
#    one_off
#end
#
#WORDS = ["door", "moot", "boot", "boots"]
#print(one_off_words("moor", WORDS) == ["door", "moot"])

#def ordered_word(str)
#    str_arr = str.chars
#    ordered = true
#    x = 0
#    while x < (str_arr.size-1)
#        if str_arr[x] > str_arr[x+1]
#            ordered = false
#        end
#        x += 1
#    end
#    ordered
#end
#
#print(ordered_word("amz") ==true)
#print(ordered_word("zma") == false)
#print(ordered_word("aa") == true) # repeats okay

#def no_repeats(year_start, year_end)
#    no_repeat_arr = []
#    years_arr = (year_start..year_end).to_a
#    years_arr.each do |year|
#        if no_repeat(year)
#            no_repeat_arr.push(year)
#        end
#    end
#    no_repeat_arr
#end
#
#def no_repeat(year)
#    repeat = false
#    year_arr = year.to_s.chars.to_a
#    year_arr.each do |digit|
#        if year_arr.count(digit) > 1
#            repeat = true
#            break
#        end 
#    end
#end

#print("\nTests for #no_repeats")
#print("===============================================")
#puts(no_repeats(1234, 1234) == [1234])
#puts(no_repeats(1123, 1123) == [])#: "  + (no_repeats(1123, 1123) == []).to_s
#puts(no_repeats(1980, 1987) == [1980,1982,1983,1984,1985,1986,1987])#: " + (no_repeats(1980, 1987) == [1980,1982,1983,1984,1985,1986,1987]).to_s
#print("===============================================")

#def letter_count(str)
#    alpha = ('a'..'z').to_a + ('A'..'Z').to_a
#    str_arr = str.chars
#    letter_count_hash = {}
#    str_arr.each do |letter|
#        if alpha.include?(letter)
#            if letter_count_hash.has_key?(letter)
#                letter_count_hash[letter] += 1
#            else
#                letter_count_hash[letter] = 1
#            end
#        end
#    end
#    letter_count_hash
#end
#
#puts (letter_count("cats are fun"))
#
#puts("\nTests for #letter_count")
#puts("===============================================")
#    puts "letter_count(\"cat\") == {\"c\" => 1, \"a\" => 1, \"t\" => 1}: "  + (letter_count("cat") == {"c" => 1, "a" => 1, "t" => 1}).to_s
#    puts "letter_count(\"moon\") == {\"m\" => 1, \"o\" => 2,\"n\" => 1}: "  + (letter_count("moon") == {"m" => 1, "o" => 2,"n" => 1}).to_s
#    puts "letter_count(\"cats are fun\") == {\"a\" => 2, \"c\" => 1, \"e\"=> 1, \"f\" => 1, \"n\" => 1, \"r\" => 1, \"s\" => 1, \"t\" => 1, \"u\" => 1}: "  + (letter_count("cats are fun") == {"a" => 2, "c" => 1, "e"=> 1, "f" => 1, "n" => 1, "r" => 1, "s" => 1, "t" => 1, "u" => 1}).to_s
#puts("===============================================")

# Catsylvanian money is a strange thing: they have a coin for every
# denomination (including zero!). A wonky change machine in
# Catsylvania takes any coin of value N and returns 3 new coins,
# valued at N/2, N/3 and N/4 (rounding down).
#
# Write a method `wonky_coins(n)` that returns the number of coins you
# are left with if you take all non-zero coins and keep feeding them
# back into the machine until you are left with only zero-value coins.
#
# Difficulty: 3/5

#def wonky_coins(n)
#    if n == 0
#        return 1
#    elsif n == 1
#        return 3
#    else
#        coins = wonky_coins(n/2)+wonky_coins(n/3)+wonky_coins(n/4)
#        return coins
#    end
#end
#
#puts("\nTests for #wonky_coins")
##puts("===============================================")
#    puts "wonky_coins(1) == 3: "  + (wonky_coins(1) == 3).to_s
#    puts "wonky_coins(5) == 11: "  + (wonky_coins(5) == 11).to_s
#    puts "wonky_coins(6) == 15: "  + (wonky_coins(6) == 15).to_s
#    puts "wonky_coins(0) == 1: "  + (wonky_coins(0) == 1).to_s
#puts("===============================================")

#def ordered_vowel_words(str)
#    str_arr = str.split(" ")
#    ordered_arr = []
#    str_arr.each do |word|
#        if ordered_vowel_word(word)
#            ordered_arr.push(word)
#        end
#    end
#    ordered_str = ordered_arr.join(' ')
#    ordered_str
#end
#
#def ordered_vowel_word(word)
#    ordered_vowels = true
#    vowels = ['a', 'e', 'i', 'o', 'u']
#    word_arr = word.chars
#    x = 0
#    vowel_arr = []
#    while x < word_arr.size
#        current = word_arr[x]
#        if vowels.include?(current)
#            if (vowel_arr == []) || vowel_arr[0] <= current
#                vowel_arr[0] = current
#            else
#                ordered_vowels = false
#                break
#            end
#        end     
#        x += 1
#    end
#    ordered_vowels
#end
#
#print("\nTests for #ordered_vowel_words")
#print("===============================================")
##print(ordered_vowel_words("amends") == "amends")
##print(ordered_vowel_words("complicated") == "")
#print(ordered_vowel_words("afoot") == "afoot") #### Please solve this before taking test
##print(ordered_vowel_words("ham") == "ham")
##print(ordered_vowel_words("crypt") == "crypt")
##print(ordered_vowel_words("o") == "o")
##print(ordered_vowel_words("tamely") == "tamely")
#
#puts(ordered_vowel_words("this is a test of the vowel ordering system"))

#def word_unscrambler(str, word_list)
#    anagram_arr = []
#    word_list.each do |word|
#        if anagram(str, word)
#            anagram_arr.push(word)
#        end
#    end
#    anagram_arr
#end
#
#def anagram(word1,word2)
#    anagram_words = false
#    word1_arr = word1.chars
#    word2_arr = word2.chars
#    word1_arr = word1_arr.sort
#    word2_arr = word2_arr.sort
#    if word1_arr == word2_arr
#        anagram_words = true
#    end
#    anagram_words
#end
#
#print("\nTests for #word_unscrambler")
#print("===============================================")
#print(word_unscrambler("cat", ["tac"]) == ["tac"])
#print(word_unscrambler("cat", ["tom"]) == [])
#print(word_unscrambler("cat", ["tic", "toc", "tac", "toe"]) == ["tac"])
#print(word_unscrambler("cat", ["scatter", "tac", "ca"]) == ["tac"])
#print(word_unscrambler("turn", ["numb", "turn", "runt", "nurt"]) == ["turn", "runt", "nurt"])
#print("===============================================")

#def bubble_sort(arr)
#    arr_cpy = arr.dup
#    i = 0
#    n = arr.size
#    while i < (n-1)
#        x = 0
#        while x < (arr_cpy.size-1)
#            if arr_cpy [x] > arr_cpy[x+1]
#                temp = arr_cpy[x]
#                arr_cpy[x] = arr_cpy[x+1]
#                arr_cpy[x+1] = temp
#            end
#            x += 1
#        end
#        i += 1
#    end
#    arr_cpy   
#end
#
#print("\nTests for #bubble_sort")
#print("===============================================")
#puts(bubble_sort([]) == [])
#puts(bubble_sort([1]) == [1])
#puts(bubble_sort([5, 4, 3, 2, 1]) == [1, 2, 3, 4, 5])
#print("===============================================")

#def nearest_larger(arr, idx)
#    nearest_idx = 0
#    nearest_left_idx = nil
#    nearest_right_idx = nil
#    nearest_left = 0
#    nearest_idx = 0
#    left_idx = idx-1
#    right_idx = idx+1
#    while left_idx > 0
#        if arr[left_idx] > arr[idx]
#            nearest_left = arr[left_idx]
#            nearest_left_idx = arr.index(nearest_left)
#            break
#        end
#        left_idx -= 1
#    end
#    puts("nearest left is: ", nearest_left)
#    puts("nearest_left_idx is : ", nearest_left_idx)
#    while right_idx < arr.size
#        if arr[right_idx] > arr[idx]
#            nearest_right = arr[right_idx]
#            nearest_right_idx = arr.index(nearest_right)
#            break
#        end
#        right_idx += 1
#    end
#    
#    if nearest_left == nil
#        return nearest_right_idx
#    else
#        return nearest_left_idx
#    end
#end
#
#print("Tests for #nearest_larger")
#print("===============================================")
#print(nearest_larger([2,3,4,8], 2) == 3)
#print(nearest_larger([2,8,4,3], 2) == 1)
#print(nearest_larger([2,6,4,8], 2) == 1)
#print(nearest_larger([2,6,4,6], 2) == 1)
#print(nearest_larger([8,2,4,3], 2) == 0)
#print(nearest_larger([2,4,3,8], 1) == 3)
#print(nearest_larger([2, 6, 4, 8], 3) == 'nil')
#print(nearest_larger([2, 6, 9, 4, 8], 3) == 2)
#print("===============================================")
#


#def not_string(str)
#    str_arr = str.split(" ")
#    if str_arr[0] != "not"
#        str_arr.unshift("not")
#    end
#    final_str = str_arr.join(' ')
#    puts final_str
#end
#not_string("Hi, this is a string")
##=> "not Hi, this is a string"
#
#not_string("not a string here")
##=> "not a string here"
#
#not_string("nothing strange about this one")
##=> "not nothing strange about this one"

#2. FlimFlam
#
#Write a method flimflam which prints all the numbers from 1 to 100 with a few exceptions:
#
#If the number is a multiple of 3, instead print "FLIM".
#If the number is a multiple of 5, instead print "FLAM"
#If the number is a multiple of both 3 and 5, instead print "FLIMFLAM"
#Note: The "modulo" operator, `%`, returns the remainder when two numbers are divided, for instance 8 % 6 #=> 2
#
#FlimFlam in action:

#def flimflam()
#    num = 1
#    while num <= 100
#        if num % 15 == 0
#            puts "FLIMFLAM"
#        elsif num % 3 == 0
#            puts "FLIM"
#        elsif num % 5 == 0
#            puts "FLAM"
#        else
#            puts num
#        end
#        num += 1
#    end
#end

#flimflam()

#Write a method no_dupes which will take an array and return that same array with all duplicate items removed. Assume integers. This should be done without using uniqueness methods like Ruby's uniq.
#
#No Dupes in action:
#
#no_dupes( [ 1, 4, 2, 7, 3, 1, 2, 8 ] )
##=> [ 1, 4, 2, 7, 3, 8 ]
#
#no_dupes( [ 100, 32, 44, 44, 23, 32, 44 ] )
##=> [ 100, 32, 44, 23 ]

#def no_dupes(arr)
#    no_dupes_arr = []
#    x = 0
#    arr.each do |num|
#        if no_dupes_arr.include?(num) == false
#            no_dupes_arr.push(num)
#        end
#    end
#    print no_dupes_arr
#end
#
#no_dupes( [ 1, 4, 2, 7, 3, 1, 2, 8 ] )
###=> [ 1, 4, 2, 7, 3, 8 ]
#
#no_dupes( [ 100, 32, 44, 44, 23, 32, 44 ] )
###=> [ 100, 32, 44, 23 ]

#def  fizzBuzz( num) 
#    x = 1
#    while x <= num
#        if x%15 == 0
#            puts "FizzBuzz"
#        elsif x%3 == 0
#            puts "Fizz"
#        elsif x%5 == 0
#            puts "Buzz"
#        else
#            puts x
#        end
#        x += 1
#    end
#end
#
#fizzBuzz(15)

#def merge_sorted_arrays(arr1,arr2)
#    sorted_arr = []
#    x = 0
#    y = 0
#    while (x < arr1.size) and (y < arr2.size)
#        if arr1[x] < arr2[y]
#            sorted_arr.push(arr1[x])
#            x += 1
#        else
#            sorted_arr.push(arr2[y])
#            y += 1
#        end
#    end
#    if x < arr1.size
#        while x < arr1.size
#            sorted_arr.push(arr1[x])
#            x += 1
#        end
#    elsif y < arr2.size
#        while y < arr2.size
#            sorted_arr.push(arr2[y])
#            y += 1
#        end
#    end
#    sorted_arr
#end
#
#puts(merge_sorted_arrays([1,3,5,7],[2,4,6,8,10]))
#puts(merge_sorted_arrays([1,3,5,7,9,11],[2,4,6,8,10]))

#def remove(s)
#    s_words = s.split(" ")
#    new_words = []
#    s_words.each do |word|
#        while word.scan(/[!]$/) == ["!"]
#            word.slice!((word.size-1))
#            #puts("excl, newword: ", excl, word)
#        end
#        new_words.push(word)
#    end
#    new_str = new_words.join(" ")
#    puts(new_str)
#    new_str
#end
#
##puts(remove("!!!Hi !!hi!!! !hi"))
##puts(remove("Hi!!!"))
#puts(remove("NUsu!! !!!sRa!!Q!!!! dg!oA!!!!! gBueo !rxzIcW!!!! dXrZXlJs ur!V!U!!tG zgl!kg !Ddr!Pk WjOamk") == "NUsu !!!sRa!!Q dg!oA gBueo !rxzIcW dXrZXlJs ur!V!U!!tG zgl!kg !Ddr!Pk WjOamk")
# Example test cases
#Test Passed: Value == "Hi"
#Expected: "Hi", instead got: "Hi!"
#Test Passed: Value == "!Hi"
#Test Passed: Value == "!Hi"
#Test Passed: Value == "Hi Hi"
#Expected: "!!!Hi !!hi !hi", instead got: "!!!Hi !!hi! !hi"

#def no_dupes(arr)
#    a_hash = {}
#    arr.each do |num|
#        if not a_hash.has_key?(num)
#            a_hash[num] = 1
#        end
#    end
#    arr_uniq = a_hash.keys()
#    arr_uniq  
#end
#
#puts(no_dupes( [ 1, 4, 2, 7, 3, 1, 2, 8 ] ) == [ 1, 4, 2, 7, 3, 8 ])
####=> [ 1, 4, 2, 7, 3, 8 ]
##
#puts(no_dupes( [ 100, 32, 44, 44, 23, 32, 44 ] ) == [ 100, 32, 44, 23 ])
####=> [ 100, 32, 44, 23 ]
#
#puts(no_dupes([]) == [])

#def bin_str(s)
#    count = 0
#    s_copy = s
#    while s_copy.include?("1")
#        idx = s_copy.index("1")
#        s_slice = s_copy[idx..(s_copy.size-1)]
#        x = 0
#        new_s = ""
#        while x < s_slice.size
#            new_s += ((s_slice[x].to_i)^1).to_s
#            x += 1
#        end
#        s_copy = s_copy[0..(idx-1)]+new_s
#        count += 1   
#    end
#    count
#end
#
#puts(bin_str("0101") == 3)
#
#def BitwiseOne(strArr)
#    final_str = ""
#    a = strArr[0].chars
#    b = strArr[1].chars
#    x = 0
#    while x < a.size
#        bitwise_or = (a[x].to_i)|(b[x].to_i)
#        s = bitwise_or.to_s
#        final_str += s
#        x += 1
#    end
#    final_str
#end

#def OtherProducts(arr)
#    final_arr = []
#    x = 0
#    while x < arr.size
#        product = (arr.inject(1){|prod,n| prod*n})/arr[x]
#        final_arr.push(product)
#        x += 1
#    end
#    final_str = final_arr.join("-")
#    final_str
#end
#
#puts(OtherProducts([1,4,3]))

#def ArrayMatching(strArr)
#    arr1 = strArr[0]
#    arr2 = strArr[1]
#    final_arr = []
#    x = 0
#    y = 0
#    while (x < arr1.size) and (y < arr2.size)
#        sum = arr1[x]+arr2[y]
#        final_arr.push(sum)
#        x += 1
#        y += 1
#    end
#    
#    while x < arr1.size
#        final_arr.push(arr1[x])
#        x += 1
#    end
#    
#    while y < arr2.size
#        final_arr.push(arr2[y])
#        y += 1
#    end
#    
#    final_str = final_arr.join("-")
#    final_str
#         
#end
#
#puts(ArrayMatching([[1, 2, 5, 6]", "[5, 2, 8, 11]]))

#def encrypt(str)
#    str_arr = str.chars
#    final_arr = []
#    x = 0
#    while x < (str_arr.size-1)
#        current = str_arr[x]
#        count = 1
#        y = x+1
#        while str_arr[y] == current
#            count += 1
#            y += 1
#        end
#        final_arr << [current, count]
#        x = x+(count)
#    end
#    final_arr
#end
#
#print(encrypt("aaabbcbbaaa"))# == [["a", 3],["b", 2],["c", 1],["b", 2],["a", 3]])
#
#puts(encrypt("aaaaaaaaaa") == [["a", 10]])
#puts(encrypt("") == [])