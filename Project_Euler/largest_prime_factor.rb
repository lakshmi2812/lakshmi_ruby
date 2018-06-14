#Largest prime factor
#Problem 3 
#The prime factors of 13195 are 5, 7, 13 and 29.
#
#What is the largest prime factor of the number 600851475143 ?


#def largest_prime_factor(num)
#    largest = 0
#    x = 0
#    prime_fac_arr = prime_factors(num)
#    while x < prime_fac_arr.size
#        current = prime_fac_arr[x]
#        if current > largest
#            largest = current
#        end
#        x += 1
#    end
#    largest
#end
#
#def is_prime?(num)
#    x = 2
#    prime = true
#    while x < num
#        if num % x == 0
#            prime = false
#            break
#        end
#        x += 1
#    end
#    prime
#end
#
#def largest_prime_factor(num)
#    x = 2
#    
#end
   
    
#puts(largest_prime_factor(100))
#puts(largest_prime_factor(600851475143))
    
# x = 2
#    new_num = 0
#    prime_factor_arr = []
#    if num % 2 == 0
#        new_num = num/2
#    else
#        new_num = (num-1)/2
#    
#    end
#    while x <= new_num
#        if num % x == 0
#            if is_prime?(x)
#                prime_factor_arr.push(x)
#            end
#        end
#        x += 1
#    end
#    prime_factor_arr
#end

#include Math
#def largest_prime_factor(num)
#    max_prime_factor = 0
#    x = 2
#    num_arr = []
#    while x < num
#        num_arr.push(x)
#        x += 1
#    end
#    y = 0
#    while y < num_arr.size
#        if y <= Math.sqrt(num).floor
#            current = num_arr[y]
#            z = y + 1
#            while z < num_arr.size
#                if (num_arr[z]%current == 0) and (num_arr[z] > current)
#                    num_arr.delete(num_arr[z])
#                end
#                z += 1
#            end
#        end
#        y += 1
#    end
#    i = num_arr.size - 1
#    while i >= 0
#        if num % num_arr[i] == 0
#            max_prime_factor = num_arr[i]
#            break
#        end
#        i -= 1
#    end
#    max_prime_factor
#end


#include Math
#def largest_prime_factor(num)
#    factor_arr = []
#    x = 2
#    current = (num/x.to_f).floor
#    while x <= current
#        if num % x == 0
#            factor_arr.push(x)
#        end
#            x += 1
#    end
#    factor_arr
#end
#    
#
##puts(largest_prime_factor(30))
#puts(largest_prime_factor(600851475143))

#include Math
#def largest_prime_factor(num)
#    x = 0
#    prime_arr = []
#    div_arr = (2..(sqrt(num)).to_f).to_a
#    #puts(div_arr)
#    num_arr = Array.new((num+1), true)
#    #print num_arr
#    #puts ""
#    while x < div_arr.size
#        current = div_arr[x]
#        #puts current
#        y = x+1
#        while y < num_arr.size
#            if (y%current == 0) and (y > current)
#                num_arr[y] = false
#            end
#            y += 1
#        end
#        x += 1
#    end
#    idx = 2
#    File.open("prime_numbers.txt", "w"){|line|
#    while idx < num_arr.size
#        if num_arr[idx]
#            line << (idx).to_s +  "\n" 
#        end
#        idx += 1
#    end}
#    #prime_arr
#end
#
#print(largest_prime_factor(600851475143))
#puts(largest_prime_factor(100000))
    
include Math
def largest_prime_factor(num)
    factor_arr = factors(num) #O(logn)
    largest_factor_prime = 0
    for f in factor_arr #O(nlogn)
        if (is_prime?(f) == true) and (f > largest_factor_prime)
            largest_factor_prime = f
        end
    end
    largest_factor_prime     
end

def factors(num)
    potential_factor = 1
    factors_arr = []
    root = sqrt(num).floor
    while potential_factor <= root
        if num%potential_factor == 0
            factors_arr.push(potential_factor, (num/potential_factor))
        end
        potential_factor += 1
    end
    factors_arr
end

def is_prime?(num)
    prime = false
    factor_arr = factors(num)
    if factor_arr.size <=2
        prime = true
    end
    prime
end
    
puts(largest_prime_factor(600851475143))
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    