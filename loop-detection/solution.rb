#creted a class
#class CicleList is a data structure that mimics a linked list
#the data structure has two values: list and currentIndex

#list[] : is a list of objects in the data structure
#currentIndex(integer) : is a integer that represent the current index of the array. method next/prev mimics circle loops


class CircleList
    @list = []
    @currentIndex = 0
    attr_accessor :currentIndex

    def initialize(list = [])
        @list = list
        @currentIndex = 0
    end

    def next
        if @currentIndex >= @list.length
            @currentIndex = @currentIndex % (@list.length-1)
        else
            @currentIndex +=1
        end
    end

    def prev
        if @currentIndex < 0
            @currentIndex = @list.length-1
        else
            @currentIndex -=1
        end
    end

    def add(element)
        @list << element
    end

    def tail
        @list.length-1
    end
end

#detectLoop detects if an array.currentIndex loops back to the beginning of the array
def detectLoop(arr)
    head = arr
    current = 0
    while arr.currentIndex > current-1
        head.next
        puts arr.currentIndex
        if arr.currentIndex < current
            return true
        end
        current = arr.currentIndex
    end
    return false
end

def setupOne
    circle = CircleList.new()
    circle.add(1)
    circle.add(1)
    circle.add(2)
    circle.add(13)
    circle.add(4)
    circle.add(5)
    return circle
end

#run my main program
def main
    #set up my enviroment
    array = setupOne()
    
    #testing my solution based on given input
    if detectLoop(array)
        puts "array has a loop"
    else
        puts "array does not have a loop"
    end

end

main()