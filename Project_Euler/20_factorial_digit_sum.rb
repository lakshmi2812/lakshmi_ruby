#!/usr/bin/ruby
#Factorial digit sum
#Problem 20 
#n! means n × (n − 1) × ... × 3 × 2 × 1
#
#For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
#and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
#
#Find the sum of the digits in the number 100!

#def factorial_digit_sum(n)
#    n_factorial_arr = factorial(n).to_s.split("")
#    factorial_sum = 0
#    n_factorial_arr.each do |current|
#        factorial_sum += current.to_i
#    end
#    factorial_sum
#end
#
#def factorial(n)
#    fact = 1
#    x = n
#    while x > 1
#        fact = fact * x
#        x -= 1
#    end
#    fact
#end
#
#puts(factorial(100))
#puts(factorial_digit_sum(100))



#def ArrayAdditionI(arr)
#    x = 0
#    largest = 0
#    add = false
#    while x < arr.size
#        if arr[x] > largest
#            largest = arr[x]
#        end
#        x += 1
#    end
#    comb_arr = []
#    (2..(arr.size-1)).each{|x| comb_arr.push(arr.combination(x).to_a)}
#    comb_arr = comb_arr.flatten(1)
#    #puts(comb_arr)
#    comb_arr.each do |i| 
#        if i.inject(0,:+) == largest
#            add = true
#            break
#        end
#    end
#    return add
#         
#end
#
#puts(ArrayAdditionI([5,7,16,1,2]))
#puts(ArrayAdditionI([3,5,-1,8,12]))


#def LetterCountI(str)
#    str_arr = str.split(" ")
#    x = 0
#    count = 0
#    largest_count_word = -1
#    while x < str_arr.size
#        count_each = 0
#        current = str_arr[x]
#        current_arr = str_arr[x].split("")
#        current_arr.each do |i|
#            each_count = current_arr.count(i)
#            if (each_count > 1) and (each_count > count_each)
#                count_each = each_count
#            end
#        end
#        if count_each > count
#            count = count_each
#            largest_count_word = current
#        end
#        x += 1
#    end
#    return largest_count_word    
#end
#
#puts(LetterCountI("Hello apple pie"))
#puts(LetterCountI("No words"))

def NumberAddition(str)
    str_arr = str.split("")
    digits = ["0","1","2","3","4","5","6","7","8","9"]
    num_str = ""
    num_arr = []
    x = 0
    while x < str_arr.size
        current = str_arr[x]
        if digits.include?(current)
            num_str += current
        else
            num_arr.push(num_str.to_i)
            num_str = ""
        end
        x += 1
    end
    num_arr.push(num_str.to_i)
    puts(num_arr)
    sum_nums = num_arr.reduce{|sum, n| sum + n}
  return sum_nums
end

puts(NumberAddition("75Number9"))
    
