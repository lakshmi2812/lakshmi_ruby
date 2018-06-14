def largest_palindrome_product(no_of_digits)
    largest_number = (10**(no_of_digits)-1)
    smallest_number = (10**(no_of_digits-1))
    product_arr = []
    x = largest_number
    while x >= smallest_number
        current = x
        y = largest_number
        while y >= smallest_number
            product = current * y
            product_arr.push(product)
            y -= 1
        end
        x -= 1
    end
    puts(product_arr)
    largest_palindrome = 0
    z = 0
    while z < product_arr.size
        current = product_arr[z]
        if is_palindrome?(current) == true
            if current > largest_palindrome
                largest_palindrome = current
            end
        end
        z += 1
    end
    largest_palindrome
end

def is_palindrome?(num)
    num_arr = num.to_s.split("")
    x = 0
    palindrome = true
    n = num_arr.size - 1
    while x < num_arr.size
        if num_arr[x].to_i != num_arr[n-x].to_i
            palindrome = false
            break
        end
        x += 1
    end
    palindrome
end
puts(largest_palindrome_product(3))