def highest_product_of_three(array)
  if array.length < 3
    raise IndexError, 'Array should be at least 3'
  end

  highest = [array[0], array[1]].max
  lowest = [array[0], array[1]].min
  highest_2 = array[0] * array[1]
  lowest_2 = array[0] * array[1]
  highest_3 = array[0] * array[1] * array[2]

  array.each_with_index do |current, index|
    if index < 2 then next end

    highest_3 = [
      highest_3,
      current * highest_2,
      current * lowest_2
    ].max

    highest_2 = [
      highest_2,
      current * highest,
      current * lowest
    ].max

    lowest_2 = [
      lowest_2,
      current * highest,
      current * lowest
    ].min

    highest = [current, highest].max
    lowest = [current, lowest].min
  end

  highest_3
end
