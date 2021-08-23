def remove_duplicates(input_array)
  write_index = 0
  (1...input_array.size).each do |read_index|
    if input_array[read_index] != input_array[write_index]
      write_index += 1
      input_array[write_index] = input_array[read_index]
    end
  end

  input_array[0...write_index]
end

puts remove_duplicates([2, 3, 5, 5, 7, 7, 11, 11, 11, 13])
