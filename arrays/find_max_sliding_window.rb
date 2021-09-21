=begin
Given a large array of integers and a window of size w,
find the current maximum value in the window as the window slides through the entire array.
=end

# Brute force

def find_max_sliding_window_brute(arr, window_size)
  result = []

  num_dup = arr.dup

  while(num_dup.length >= window_size)
    slice = num_dup.take(window_size)
    result << slice.max
    num_dup.shift
  end

  result
end


# Optimized

def find_max_sliding_window(arr, window_size)
  result = []

  return result if (arr.length == 0)
  return result if (window_size > arr.length)

  window_ = []
  #find out max for first window
  for i in 0..(window_size - 1)
    while (window_.length > 0 && arr[i] >= arr[window_.last])
      # window_.length > 0 is for the first element check, so the first element can be directly added to the queue
      window_.pop
    end
    window_.push(i)
  end

  result.push(arr[window_[0]])

  for i in window_size..(arr.length - 1)
    # remove all numbers that are smaller than current number
    # from the tail of list
    while (window_.length > 0 && arr[i] >= arr[window_[window_.length - 1]])
      window_.pop()
    end

    #remove first number if it doesn't fall in the window anymore
    if (window_.length > 0 && (window_[0] <= i - window_size))
      window_.shift()
    end

    window_.push(i)
    result.push(arr[window_.first])
  end
  
  return result
end

array = [1, 2, 3, 4, 5, 6,7, 8, 9, 10]  
puts "Array = " + array.to_s
res = find_max_sliding_window(array, 3)
puts "Max = " + res.to_s

array1 = [10, 6, 9, -3, 23, -1, 34, 56, 67, -1, -4, -8, -2, 9, 10, 34, 67]
puts "Array = " + array1.to_s
res1 = find_max_sliding_window(array1, 3)
puts "Max = " + res1.to_s