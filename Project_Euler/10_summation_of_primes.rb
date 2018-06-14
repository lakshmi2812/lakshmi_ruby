#Summation of primes
#Problem 10 
#The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#
#Find the sum of all the primes below two million.

include Math
def summation_of_primes(num)
    sum_of_primes = 0
    x = 2
    while x < num
        if prime?(x)
            sum_of_primes += x
        end
        x += 1
    end
    sum_of_primes
end

def prime?(num)
    factor_arr = factors(num)
    prime = false
    if factor_arr.size == 2
        prime = true
    end
    prime
end

def factors(num)
    potential_factor = 1
    root = (Math.sqrt(num)).floor
    factor_arr = []
    while potential_factor <= root
        if num%potential_factor == 0
            factor_arr.push(potential_factor)
            factor_arr.push(num/potential_factor)
        end
        potential_factor += 1
    end
    factor_arr
end
    
puts(summation_of_primes(10))
puts(summation_of_primes(2000000))