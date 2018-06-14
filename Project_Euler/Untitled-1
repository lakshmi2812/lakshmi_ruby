#Writes the list of prime factors to an array using Sieve of Eratosthenes 
#include Math
#def prime_numbers_list(num)
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