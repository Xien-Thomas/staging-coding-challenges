
def intersect(a1,a2)
    a1.each_index do |x|
        if x <= a1.length && x <= a2.length
            if a1[x] == a2[x]
                puts "array 1: #{a1[x]} and array2: #{a2[x]}"
                return true
            end
        end
    end
    return false
end

def setupOne
    return [1,2,3,4,5,6], [7,8,3,10,2,11]
end

def main
    arrayOne, arrayTwo = setupOne()

    if intersect(arrayOne, arrayTwo)
        puts "array One and array Two intersects!"
    else
        puts "array One and array Two does not intersects!"
    end

end

main()