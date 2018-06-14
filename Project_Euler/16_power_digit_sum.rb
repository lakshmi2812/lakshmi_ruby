def power_digit_sum(num)
    num_power = num.to_s
    num_arr = num_power.split("")
    x = 0
    sum = 0
    while x < num_arr.size
        current = num_arr[x].to_i
        sum += current
        x += 1
    end
    sum
end
    
puts(power_digit_sum(2**1000))