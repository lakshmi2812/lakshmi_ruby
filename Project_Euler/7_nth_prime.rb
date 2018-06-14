def nth_prime(n)
    x = 2
    count = 0
    while count < n
        if prime?(x)
            count += 1
        end
        x += 1
    end
    return (x-1)
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

#puts(factors(2))
#puts(factors(5))
puts(nth_prime(5))
#puts(prime?(103))
puts(nth_prime(6))
puts(nth_prime(100))
puts(nth_prime(10001))

