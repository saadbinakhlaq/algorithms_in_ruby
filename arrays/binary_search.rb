def binary_search(array, key)
  low_index = 0
  high_index = array.length - 1

  while low_index <= high_index
    mid_index = low_index + ((high_index - low_index)/2)

    return mid_index if array[mid_index] == key
    if key < array[mid_index]
      high_index = mid_index - 1
    else
      low_index = mid_index + 1
    end
  end

  return -1
end

array = [1, 10, 20, 47, 59, 63, 75, 88, 99, 107, 120, 133, 155, 162, 176, 188, 199, 200, 210, 222]

puts binary_search(array, 10)