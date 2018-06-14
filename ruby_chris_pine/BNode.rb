#kmaduri@cisco.com
#kmaduri
#obj3C+iviT

class BNode
    def initialize(data)
        @data = data
        @left = nil
        @right = nil
    end
    
    def data()
        @data
    end
    
    def insert(d)
        #puts("Recursively check if #{d} is greater than #{@data}")
        if d > @data
            if @right == nil
                #puts("Right is nil..So, creating a new node at right")
                @right = BNode.new(d)
            else
                #puts("Right already has data #{@right.data}. So, call insert on right node")
                @right.insert(d)
            end
        else
            if @left == nil
                #puts("Left is nil. So, insert new node to the left")
                @left = BNode.new(d)
            else
                #puts("Left already has data #{@left.data}. So, call insert on left node")
                @left.insert(d)
            end
        end
    end
    
    def lookup(d)
        #puts("Checking for data #{d}")
        if @data == d
            #puts("If the data in the node matches given data, return true")
            return true
        elsif d > @data
            #puts("#{d} is greater than #{@data}. So, calling lookup on right node")
            if @right == nil
                #puts("There are no nodes to right. So, return false")
                return false
            else
                #puts("Call lookup on right node")
                @right.lookup(d)
            end
        else
            #puts("#{d} is less than #{@data}. So, calling lookup on left node")
            if @left == nil
                #puts("There are no modes to the left. So, return false")
                return false
            else
                #puts("Call lookup on the left node")
                @left.lookup(d)
            end
        end 
    end
    
    def size
       if @left == nil
           if @right == nil
               return 1
            else
               return (1+@right.size)
            end
        else
           if @right == nil
               return (1+@left.size)
            else
               return (1+@left.size+@right.size)
           end
       end
    end
    
    def max_depth
        if @left == nil
            if @right == nil
                return 1
            else
                return (1+@right.max_depth)
            end
        else
            if @right == nil
                return (1+@left.max_depth)
            else
                return (1+[@left.max_depth,@right.max_depth].max)
            end
        end
    end

end

arr = [43,56,98,102,2,6,36,24,91]#,91,91,71,86]
root = BNode.new(91)
for i in arr
    root.insert(i)
end

raise "Lakshmi not smarter than chimp" unless (root.lookup(100) == false)
raise "Lakshmi not smarter than chimp" unless (root.lookup(36) == true)
raise "Lakshmi not smarter than chimp" unless (root.size() == (1 + arr.length))
raise "Lakshmi not smarter than chimp" unless (root.max_depth() == 6)

puts "all good!"


