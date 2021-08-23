values = [25626, 25757, 24367, 24267, 16, 100, 2, 7277]
delta_encoding = []

first_elem = values.first
elem_for_diff = values.first
(1...values.size).each do |index|
  diff = values[index] - elem_for_diff

  if diff < -127 || diff > 127
    delta_encoding << -128
  end

  delta_encoding << diff

  elem_for_diff = values[index]
end

delta_encoding.unshift(first_elem)