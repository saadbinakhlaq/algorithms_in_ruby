=begin
Rotate an array by n elements
=end

def rotate_array(arr, n)
  len = arr.length

  n = n % len

  if n < 0
    # convert negative rotation to positive
    n = n + len
  end

  arr = arr.reverse
  array_1 = arr[0, n].reverse
  array_2 = arr[n, len - 1].reverse
  array_1 + array_2
end

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

print(rotate_array(arr, 3))