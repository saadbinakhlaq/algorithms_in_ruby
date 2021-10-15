def uncompress(str)
  numbers = "0123456789"
  result = ""
  i = 0
  j = 0
  while j < str.size
    if numbers.include?(str[j])
      j += 1
    else
      num = Integer(str[i...j])
      result += str[j] * num
      j += 1
      i = j
    end
  end
  result
end