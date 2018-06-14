#Pascal's Triangle'

#n -> 7
#
#
#1
#1 1
#1 2 1
#1 3 3 1
#1 4 6 4 1
#1 5 10 10 5 1
#1 6 15 20 15 6 1

def pascal_triangle(n)
    init_arr = [1,1]
    if n == 1
        print(init_arr[0])
    elsif n == 2
        print(init_arr[0].to_s + " " + init_arr[1].to_s)
    else
        print(init_arr[0])
        puts ""
        print(init_arr[0].to_s + " " + init_arr[1].to_s)
        puts ""
        i = 3
        working_arr = init_arr.dup
        while i <= n
            x = 0
            print "1 "
            output_arr = [1]
            while x < (working_arr.size-1)
                temp = working_arr[x]+working_arr[x+1]
                output_arr.push(temp)
                print temp.to_s + " "
                x += 1
            end
            print "1"
            output_arr.push(1)
            working_arr = output_arr
            puts ""
            i += 1
        end 
    end
end

pascal_triangle(10)
