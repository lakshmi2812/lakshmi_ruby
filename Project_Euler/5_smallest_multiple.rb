#Smallest multiple
#Problem 5 
#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#
#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def smallest_multiple(num)
    x = 2
    arr = []
    while x <= 20
        arr.push(x)
        x += 1
    end
    arr
end

puts(smallest_multiple(20))