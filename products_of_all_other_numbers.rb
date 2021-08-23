def product_of_all_other_numbers(array)
  product_of_all_ints_except_at_index = []

  products_so_far = 1
  i = 0
  while i < array.length
    product_of_all_ints_except_at_index[i] = products_so_far
    products_so_far *= array[i]
    i += 1
  end

  products_so_far = 1
  i = array.length - 1
  while i >= 0
    product_of_all_ints_except_at_index[i] *= products_so_far
    products_so_far *= array[i]
    i -= 1
  end
  product_of_all_ints_except_at_index
end
