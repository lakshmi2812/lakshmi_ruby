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

#def WaveSorting(arr)
#    arr_perm = arr.permutation.to_a
#    wave = true
#    arr_perm.each do |ary|
#        x = 0
#        temp = 0
#        while x < (ary.size-1)
#            if ary[x] > ary[x+1]
#                if temp == 0
#                    temp = 1
#                else
#                    return false
#                end
#            else
#                if temp == 1
#                    temp = 0
#                else
#                    return false
#                end
#            end
#            x += 1
#        end
#        if wave == true
#            return true 
#        end
#    end
#end

#def WaveSorting(arr)
#    freq_hash = {}
#    arr.each do |num|
#        freq_hash[num] = arr.count(num)
#    end
#    freq_hash.values.max <= (arr.size/2)
#end
#
#puts(WaveSorting([0, 1, 2, 4, 1, 1, 1]) == false)
#puts(WaveSorting([0, 4, 22, 4, 14, 4, 2]) == true)
## keep this function call here

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
#puts(ArrayMatching([[1, 2, 5, 6], [5, 2, 8, 11]]))
#puts(ArrayMatching([[5, 2, 3], [2, 2, 3, 10, 6]]))

#def decimal_to_binary(str)
#    binary_arr = []
#    decimal_num = str.to_i
#    quotient = 2
#    while quotient >= 1
#        rem = decimal_num%2
#        quotient = decimal_num/2
#        binary_arr.unshift(rem)
#        decimal_num = quotient
#    end
#    while binary_arr.size < ((str.length)*4)
#        binary_arr.unshift(0)
#    end
#    binary_str = binary_arr.join("")
#end

#print(decimal_to_binary("47"))

#def BinaryReversal(str)
#    binary = str.to_i.to_s(2)
#    binary_reverse = binary.reverse
#    decimal_final = binary_to_decimal(binary_reverse)
#    decimal_final      
#end
#
#def binary_to_decimal(str)
#    n = str.length - 1
#    i = 0
#    final_num = 0
#    while n >= 0
#        decimal_value = (2**i)*(str[n].to_i)
#        final_num += (decimal_value).to_i 
#        i += 1
#        n -= 1
#    end
#    final_decimal_str = final_num.to_s
#    final_decimal_str
#end
#
#def decimal_to_binary(str)
#    binary_arr = []
#    decimal_num = str.to_i
#    quotient = 2
#    while quotient >= 1
#        rem = decimal_num%2
#        quotient = decimal_num/2
#        binary_arr.unshift(rem)
#        decimal_num = quotient
#    end
#    
#    while binary_arr.size < ((str.length)*4)
#        binary_arr.unshift(0)
#    end
#    
#
#    binary_str = binary_arr.join("")
#    binary_str
#end
#
#puts(BinaryReversal("213"))
#puts(decimal_to_binary("213"))
#
##1. For the input "213" your output was incorrect. The correct answer is 171.
##2. For the input "12345" your output was incorrect. The correct answer is 39948.
##3. For the input "1" your output was incorrect. The correct answer is 128.
##4. For the input "10156" your output was incorrect. The correct answer is 13796.
##5. For the input "15487793" your output was incorrect. The correct answer is 9226807.
##Time period points: 5
##You completed this challenge in 9 minutes.

#def LongestIncreasingSequence(arr)
#    x = 0
#    lis_hash = {}
#    while x < (arr.size-1)
#        current = arr[x]
#        sub_arr = [current]
#        y = x+1
#        while y < arr.size
#            if arr[y] > sub_arr[-1]
#                sub_arr << arr[y]
#            end
#            y += 1
#        end
#        if not lis_hash.has_key?(sub_arr)
#            lis_hash[sub_arr] = sub_arr.size
#        end
#        x += 1
#    end
#    puts(lis_hash)
#    lis_hash.values.max
#         
#end
#
#puts(LongestIncreasingSequence([10, 22, 9, 33, 21, 50, 41, 60, 22, 68, 90]))

#def EvenPairs(str)
#    even_pairs = false
#    x = 0
#    while x < (str.size-1)
#        if (str[x].scan(/[0-9]/) != []) and (is_even?(str[x].to_i)==true)
#            count = 1
#            y = x+1
#            while (y < str.size) and (str[y].scan(/[0-9]/)!= [])
#                if (is_even?(str[y].to_i))
#                    count += 1
#                end
#                y += 1
#            end
#            if count >=2
#                even_pairs = true
#                break
#            end
#        end
#        x += 1
#    end
#    even_pairs
#end
#
#def is_even?(num)
#    if num%2 == 0
#        return true
#    else
#        return false
#    end
#end
#   
#def FormattedDivision(num1,num2)
#    div = num1/num2.to_f.round(4)
#    div_str = '%.4f' % div
#    div_str_split = div_str.split(".")
#    whole_num = div_str_split[0]
#    final_str = ""
#    if whole_num.size <=3
#        whole_num_commas = whole_num
#    else
#        whole_num_parts = []
#        x = whole_num.size-1
#        while x >= 2
#            whole_num_parts.unshift(whole_num[x-2..x])
#            x = x-3
#        end
#        whole_num_parts.unshift(whole_num[0..x])
#        whole_num_commas = whole_num_parts.join(",")
#    end
#    final_str = whole_num_commas + "." + div_str_split[1]
#    puts(final_str)
#    final_str
#end
#
#raise "error" unless (FormattedDivision(503394930, 43) == "11,706,858.8372")
#puts "all good!"


#def StringReduction(str)
#    reduction_hash = {"ab"=>"c", "ba"=>"c", "bc"=>"a", "cb"=>"a", "ac"=>"b", "ca"=>"b"}
#    #base case
#    if str.count(str[0]) == str.size
#        return str
#    else
#        x = 0
#        while x < str.size
#            
#            x += 1
#        end
#         
#end
#    
#def StringReduction(str)
#    reduction_hash = {"ab"=>"c", "ba"=>"c", "bc"=>"a", "cb"=>"a", "ac"=>"b", "ca"=>"b"}
#    #base case
#    if str.count(str[0]) == str.size
#        return str
#    else
#        return reduction_hash[str[0..1]] + StringReduction(str[2..-1])
#    end
#end
    
#def StringReduction(str)
#    reduction_hash = {"ab"=>"c", "ba"=>"c", "bc"=>"a", "cb"=>"a", "ac"=>"b", "ca"=>"b"}
#    #base case
#    if str.count(str[0]) == str.size
#        return str.size
#    else
#        reduct = str.sub(/[ab|ba]/, "c").sub(/[bc|cb]/, "a").sub(/[ac|ca]/, "b")
#        return StringReduction(str)
#    end
#end
#
#puts(StringReduction("abcabc"))

#def reverse(arr)
#    n = arr.size-1
#    x = 0
#    if arr.size <= 1
#        return arr
#    else
#        while x <= (arr.size/2)
#            swap_help = arr[x]
#            arr[x] = arr[n-x]
#            arr[n-x] = swap_help
#            x += 1
#        end
#    end
#    return arr
#end

#puts(reverse([5,1,76,80,11,100]) == [100,11,80,76,1,5])
#puts(reverse([]) == [])
#puts(reverse([1]) == [1])

#def LongestWord(sen)
#    sen_arr = sen.split(/\W+/)
#    sen_hash = {}
#    sen_arr.each do |item|
#        if sen_hash[item.size] == nil
#            sen_hash[item.size] = item
#        end
#    end
#    largest = sen_hash.keys.max
#    longest_word = sen_hash[largest]
#         
#end
#
#puts(LongestWord("longest word!!"))

#def GCF(arr)
#    factors_list1 = factors(arr[0])
#    factors_list2 = factors(arr[1])
#    cf = []
#    factors_list1.each do |factor|
#        if factors_list2.include?(factor)
#            cf.push(factor)
#        end
#    end
#    cf.max
#end
#
#def factors(num)
#    factors_arr = []
#    x = 1
#    root = Math.sqrt(num).floor
#    while x <= root
#        if num % x == 0
#            factors_arr.push(x)
#            factors_arr.push(num/x)
#        end
#        x += 1
#    end
#    factors_arr
#end

#puts(GCF([12,28]))
#print factors(12)
#puts
#print factors(28)


#def SimpleSymbols(str)
#    acceptable = false
#    alpha = ("a".."z").to_a + ("A".."Z").to_a
#    x = 0
#    while x < str.size
#        if alpha.include?(str[x])
#            if (x != 0) and (x != str.size-1)
#                acceptable = false
#                break
#            else
#                if (str[x-1] == "+") and (str[x+1] == "+")
#                    acceptable = true
#                    break
#                end
#            end
#        end
#        x += 1
#    end
#    acceptable
#end
#
#puts(SimpleSymbols("f++d+"))
#
#def SimpleSymbols(str)
#    acceptable = true
#    alpha = ("a".."z").to_a + ("A".."Z").to_a
#    x = 0
#    while x < str.size
#        if alpha.include?(str[x])
#            if (str[x-1] != "+") or (str[x+1] != "+")
#                return false
#            end
#        end
#        x += 1
#    end
#    acceptable
#end

#def BitwiseTwo(strArr)
#    output_arr = []
#    n = strArr[0].length
#    x = 0
#    while x < n
#        current = ((strArr[0][x].to_i)&(strArr[1][x].to_i)).to_s
#        output_arr.push(current)
#        x += 1
#    end
#    op = output_arr.join("")
#    op
#end
#
#puts(BitwiseTwo(["100", "000"]))

#def SerialNumber(str)
#    valid = false
#    str_arr = str.split(".")
#    sum1 = str_arr[0].split("").inject(0){|sum, n| sum+n.to_i}
#    print sum1
#    sum2 = str_arr[1].split("").inject(0){|sum, n| sum+n.to_i}
#    if (three(str_arr) == true) and (sum1%2 == 0) and (sum2%2 != 0)
#        puts("yes")
#        if (greater(str_arr[0] == true)) and (greater(str_arr[1] == true)) and (greater(str_arr[2]) == true)
#            puts("yes!")
#            valid = true
#        end
#    end
#    valid
#end
#
#
#def three(arr)
#    three_length = false
#    if arr.size == 3
#        if arr[0].size == 3 and arr[1].size == 3 and arr[2].size == 3
#            if (arr[0].scan(/[0-9]/).length == 3) and (arr[0].scan(/[0-9]/).length == 3) and (arr[0].scan(/[0-9]/).length == 3) 
#                three_lenth = true
#            end
#        end
#    end
#    three_length
#end
#
#def greater(str)
#    greater_than = false
#    if (str[2].to_i > str[0].to_i) and (str[2].to_i > str[1].to_i)
#        greater_than = true
#    end
#    greater_than
#end
#
##puts(greater("123"))
##puts(greater("231"))
#puts(SerialNumber("11.124.667"))
#puts(SerialNumber("114.568.112"))

#def ElementMerger(arr)
#    final_arr = arr.dup
#    while final_arr.length > 1
#        x = 0
#        temp_arr = []
#        while x < (final_arr.size-1)
#            diff = (final_arr[x]-final_arr[x+1]).abs
#            temp_arr.push(diff)
#            x += 1
#        end
#        final_arr = temp_arr
#    end
#    final_arr    
#end
#
#puts(ElementMerger([4, 5, 1, 2, 7]))

#def SimpleEvens(num)
#    simple_even = true
#    num.to_s.chars.each do |digit|
#        if (digit.to_i) % 2 != 0
#            simple_even = false
#            break
#        end
#    end
#    simple_even     
#end
#
#puts(SimpleEvens(2222220222))
#puts(SimpleEvens(20864646452))


#def ClosestEnemy(arr)
#    one_idx = arr.index(1)
#    two_idx = 0
#    two_left = -1
#    two_right = -1
#    left = 0
#    right = 0
#    while (one_idx+right) < arr.size
#        if arr[one_idx+right] == 2
#            two_right = one_idx+right
#        end
#        right += 1
#    end
#    
#    while (one_idx-left) > 0
#        if arr[one_idx-left] == 2
#            two_left = one_idx-left
#        end
#        left -= 1
#    end
#    
#    if two_left == -1
#        two_idx = two_right
#    elsif two_right == -1
#        two_idx = two_left
#    elsif (two_left-one_idx).abs < (two_right-one_idx).abs
#        return (two_left-one_idx).abs
#    else
#        return (two_right-one_idx).abs
#    end
#end
#puts(ClosestEnemy([1, 0, 0, 0, 2, 2, 2]))

#def NextPalindrome(num)
#    add = 1
#    while ((num+add).to_s) != (((num+add).to_s).reverse)
#        num_str = (num+add).to_s
#        add += 1
#    end
#    num_str.to_i     
#end

#def NextPalindrome(num)
#    add = 1
#    num_str = (num+add).to_s
#    while num_str != (num_str.reverse)
#        num_str = (num+add).to_s
#        add += 1
#    end
#    num_str.to_i     
#end

#def PalindromeCreator(str)
#    final_str = ""
#    str_slice = str.slice(0,str.size)
#    if str_slice == str_slice.reverse
#        return "palindrome"
#    else
#        while str_slice != str_slice.reverse
#            n = str_slice.size - 1
#            x = 0
#            while x < (str_slice.size/2).floor
#                if str_slice[x] != str_slice[n-x]
#                    break
#                end
#                x += 1
#            end
#            final_str += str_slice[x]
#            str_slice = str_slice.delete(str_slice[x])
#        end
#        if (final_str == "") or (final_str.size > 2)
#            return "not possible"
#        else
#            return final_str
#        end
#    end
#end
#
#puts(PalindromeCreator("abjchba"))
#puts(PalindromeCreator("kjjjhjjj"))
#puts(PalindromeCreator("kkkvxfrg"))
#puts(PalindromeCreator("abba"))

#def  check_divisors( divisor_array,  low,  high) 
#    low_high_arr = (low..high).to_a
#    print low_high_arr
#    x = 0
#    while x < low_high_arr.size
#        current = low_high_arr[x]
#        y = 0
#        count = 0
#        while y < divisor_array.size
#            if current%divisor_array[y] == 0
#                count += 1
#            end
#            y += 1
#        end
#        puts count
#        if count == 0
#            puts current
#        elsif (count > 0) and (count < .size)
#            puts(current.to_s + " " + "one_match")
#        else
#            puts(current.to_s + " " + "all_match")
#        end
#        x += 1
#    end
#end

#check_divisors([1,1],1,5)


#def  clock_angles( hour,  minute) 
#    total = 360
#    angle_hour = 360/12 
#    angle_minute = 360/60
#    diff = ((hour)*angle_hour - minute*angle_minute).floor.abs
#    return diff
#end
#
#puts(clock_angles(3,0))
#puts(clock_angles(5,50))

#def  multi_array_sum(arr) 
#    
#end