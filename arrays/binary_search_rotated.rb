def binary_search_rotated(array, key)
  from = 0
  to = array.length - 1

  return -1 if from > to
    
  while from <= to
    mid = from + ((to - from) / 2).floor

    return mid if array[mid] == key

    if array[from] <= array[mid] && key <= array[mid] && key >= array[from]
      to = mid - 1
    
    elsif array[mid] <= array[to] && key >= array[mid] && key <= array[to]
      from = mid + 1
    
    elsif array[to] <= array[mid] && array[mid] <= array[from] && key > array[from]
      to = mid + 1; 
     
    elsif (array[to] <= array[mid])
      from = mid + 1  

    elsif (array[from] >= array[mid])
      to = mid - 1

    else 
      return -1  
    end
  end 
   
  return -1
end

v1 = [6, 7, 1, 2, 3, 4, 5]
puts("Key(3) found at: " + binary_search_rotated(v1, 3).to_s)
puts("Key(6) found at: " + binary_search_rotated(v1, 6).to_s)

v2 = [4, 5, 6, 1, 2, 3]
puts("Key(3) found at: " + binary_search_rotated(v2, 3).to_s)
puts("Key(6) found at: " + binary_search_rotated(v2, 6).to_s)  