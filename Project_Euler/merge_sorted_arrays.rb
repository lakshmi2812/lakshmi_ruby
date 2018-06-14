def merge_sorted_arrays(arr1, arr2)
    i = 0
    j = 0
    sorted = false
    sorted_arr = []
    while (i < arr1.size) and (j < arr2.size) 
        if arr1[i] <= arr2[j]
            sorted_arr.push(arr1[i])
            i += 1
        else
            sorted_arr.push(arr2[j])
            j += 1
        end
    end
    if i < arr1.size
        while i < arr1.size
            sorted_arr.push(arr1[i])
            i += 1
        end
    else
        while j < arr2.size
            sorted_arr.push(arr2[j])
            j += 1
        end
    end
    sorted_arr
end

#Writes the list of prime factors to an array using Sieve of Eratosthenes 
include Math
def prime_numbers_list(num)
    x = 0
    prime_arr = []
    div_arr = (2..(sqrt(num)).to_f).to_a
    #puts(div_arr)
    num_arr = Array.new((num+1), true)
    #print num_arr
    #puts ""
    while x < div_arr.size
        current = div_arr[x]
        #puts current
        y = x+1
        while y < num_arr.size
            if (y%current == 0) and (y > current)
                num_arr[y] = false
            end
            y += 1
        end
        x += 1
    end
    idx = 2
    #File.open("prime_numbers.txt", "w"){|line|
    while idx < num_arr.size
        if num_arr[idx]
            #line << (idx).to_s +  "\n" 
            prime_arr.push(idx)
        end
        idx += 1
    end#}
    prime_arr
end

#print(largest_prime_factor(600851475143))
#puts(prime_numbers_list(100000))

arr1 = (2..1000000).to_a
arr2 = prime_numbers_list(100000)
#puts(merge_sorted_arrays([2,4,6,8], [2,3,5,7]))
puts(merge_sorted_arrays(arr1, arr2))
