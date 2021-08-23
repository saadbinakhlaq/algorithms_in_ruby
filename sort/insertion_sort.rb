def insertion_sort_1(array)
  final = [array.shift]

  for i in array
    final_index = 0

    while final_index < final.length
      if i <= final[final_index]
        final.insert(final_index, i)
        break
      elsif final_index == final.length - 1
        final.insert(final_index + 1, i)
        break
      end

      final_index += 1
    end
  end

  final
end

def insertion_sort_2(arr)
  (1...arr.size).each do |i|
    key = arr[i]
    j = i - 1

    while j >= 0 && arr[j] > key
      arr[j+1] = arr[j]
      j -= 1
    end

    arr[j+1] = key
  end

  arr
end


numbers = [9, 8, 7, 6, 5, 4, 3, 2, 1]
# puts insertion_sort_1 numbers
puts insertion_sort_2 numbers