#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
#Find the sum of all the multiples of 3 or 5 below 1000.

def sum_3_5(n)
    x = 3
    multiple_sum = 0
    while x < n
        current = x
        if (current % 3 == 0) or (current % 5 == 0)
            multiple_sum += current
        end
        x += 1
    end
    multiple_sum
end

puts(sum_3_5(10) == 23)
puts(sum_3_5(1000))