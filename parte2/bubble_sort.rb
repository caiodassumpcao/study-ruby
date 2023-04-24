
def bubblesort(array, length)
    sorted = true

    for i in 0..(length - 2)
        if array[i] > array[i + 1] 
            array[i], array[i + 1] = array[i + 1], array[i]
            sorted = false
        end
    end

    if sorted == false
        bubblesort(array, length)
    else 
        return array 
    end
end

unsorted_array = [6, 3, 0, 5]
sorted_array = bubblesort(unsorted_array, unsorted_array.length)

puts sorted_array.inspect 
puts "a ordem da lista ficou: #{sorted_array}"


