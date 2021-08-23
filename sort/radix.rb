#the function sorts input arr by the currently significant digit
require 'pry'

def counting_sort(input_arr, exp = 0)
  count_arr = Array.new(10, 0)
  result = Array.new(input_arr.size)
  
  m = 10**(exp+1)
  n = 10**exp

  # binding.pry
  #count occurence of currently significant digit
  #if exp == 0 than 5 is the currently significant digit in 135
  input_arr.each do |item|
    signif_number = (item%m)/n
    count_arr[signif_number] += 1
  end
  
  #modify count_arr to show actual index
  (1...10).each do |i|
    count_arr[i] = count_arr[i-1] + count_arr[i]
  end
  
  #creat output array
  i = input_arr.size - 1
  until i < 0 do
    item = input_arr[i]
    signif_number = (item%m)/n
    count_arr[signif_number] -= 1
    result[count_arr[signif_number]] = item
    i -= 1
  end
  
  result
end

def radix_sort(arr)
  #find the maximum number to know number of digits
  max_num = arr.max
  #find up to what exponenent the nums in array are
  # exp = 0
  # until max_num == 0 do
  #     exp += 1
  #     max_num = max_num/10
  # end
  exp = Math.log10(max_num).floor + 1

  (0...exp).each do |i|
    arr =  counting_sort(arr, i)
  end
  arr
end

p radix_sort [9, 179, 139, 38, 10, 5, 36]