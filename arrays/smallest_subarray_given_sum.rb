=begin
Given an array of positive integers nums and a positive integer target, return the minimal length of a contiguous subarray [numsl, numsl+1, ..., numsr-1, numsr] 
of which the sum is greater than or equal to target. If there is no such subarray, return 0 instead.
=end

def smallest_subarray_given_sum(array, target_sum)
  smallest_subarray_length = 0
  max_sum = array.first
  window = []

  for index in 0..(array.length - 1)
    if max_sum >= target_sum && smallest_subarray_length == 1
      return 1
    end

    window = [array.first]
    
  end
end