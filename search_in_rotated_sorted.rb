def binary_search(array, to_be_searched)
  min    = 0
  max    = array.size - 1

  while true
    if max < min
      return -1
    end

    middle = (min + max) / 2

    if array[middle] > to_be_searched
      max = middle - 1
    elsif array[middle] < to_be_searched
      min = middle + 1
    else
      return middle
    end
  end
end

array = [1, 2, 3, 8, 21, 36, 47]

require 'pry'
def find_pivot(array)
  if array.first < array.last
    return 0
  end

  left = 0
  right = array.size - 1

  while left <= right
    middle = (left + right)/2

    if array[middle] > array[middle + 1]
      return middle + 1
    end

    if array[left] <= array[middle]
      left = middle + 1
    else
      right = middle - 1
    end
  end

  return left
end

array = [12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

to_be_searched = 1

pivot = find_pivot(array)
puts pivot
# if to_be_searched >= array[pivot] && to_be_searched <= array[-1]
#   puts (pivot + binary_search(array[pivot..-1], to_be_searched))
# elsif to_be_searched < array[pivot] && to_be_searched < array[0]
#   puts binary_search(array[0..pivot], to_be_searched)
# else
#   puts -1
# end