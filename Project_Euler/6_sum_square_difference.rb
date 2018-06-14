#Problem 6 
#The sum of the squares of the first ten natural numbers is,
#
#12 + 22 + ... + 102 = 385
#The square of the sum of the first ten natural numbers is,
#
#(1 + 2 + ... + 10)2 = 552 = 3025
#Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
#
#Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

def sum_square_difference(n)
    sum = 0
    x = 1
    while x <= n
        sum += x
        x += 1
    end
    square_of_sum = sum * sum
    
    y = 1
    sum_of_squares = 0
    while y <= n
        square = y * y
        sum_of_squares += square
        y += 1
    end
    
    diff = square_of_sum - sum_of_squares
    diff
end

puts(sum_square_difference(10))
puts(sum_square_difference(100))