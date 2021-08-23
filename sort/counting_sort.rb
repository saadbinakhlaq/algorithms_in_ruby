require 'pry'
def counting_sort(array)
  max = array.max
  count_array = [0] * (max + 1)

  array.each do |value|
    count_array[value] += 1
  end

  count_array.each_with_index do |value, index|
    if index == 0 then next end
    count_array[index] = count_array[index] + count_array[index - 1]
  end

  sorted_array = [0] * max

  array.each_with_index do |value, i|
    index = count_array[value]
    count_array[value] -= 1
    sorted_array[index - 1] = value
  end
  sorted_array
end

p counting_sort([1, 4, 1, 2, 1, 1, 1, 1, 1, 5, 2])