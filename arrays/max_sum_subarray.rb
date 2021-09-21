=begin
Find max sum subarray of a fixed size k

=end

def find_max_sum_subarray(array, window_size)
  max_so_far = 0
  window = []

  for i in 0..(window_size - 1)
    max_so_far += array[i]
    window << array[i]
  end

  for i in window_size..(array.length - 1)
    new_value_added = array[i]
    old_value_removed = window.shift
    window.push(new_value_added)
    current_total = max_so_far - old_value_removed + new_value_added

    max_so_far = [max_so_far, current_total].max
  end
  max_so_far
end

# def find_max_sum_subarray(array, window_size)
#   max_so_far = array.first
#   current_total = array.first

#   for index in 0..(array.length - 1)
#     max_so_far += array[index] if index > 0

#     if index >= window_size - 1
#       current_total = [max_so_far, current_total].max
#       max_so_far -= array[index - (window_size - 1)] 
#     end
#   end
#   current_total
# end

puts find_max_sum_subarray([4, 2, 1, 7, 8, 1, 2, 8, 1, 0], 3) 