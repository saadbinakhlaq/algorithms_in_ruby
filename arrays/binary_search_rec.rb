def binary_search_rec(array, key, low_index, high_index)
  return -1 if low_index > high_index
    
  mid_index = low_index + ((high_index - low_index) / 2)

  if array[mid_index] == key
    return mid_index
  elsif key < array[mid_index]
    return binary_search_rec(array, key, low_index, mid_index - 1)
  else
    return binary_search_rec(array, key, mid_index + 1, high_index)
  end
end

def binary_search(array, key)
  binary_search_rec(array, key, 0, array.length - 1)
end

array = [1, 10, 20, 47, 59, 63, 75, 88, 99, 107, 120, 133, 155, 162, 176, 188, 199, 200, 210, 222]

puts binary_search(array, 200)