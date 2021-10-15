def compress(str)
  j = 0
  i = 0
  result = ""
  str += " "

  while j < str.size
    if str[i] == str[j]
      j += 1
    else
      count = j - i
      if count == 1
        result += str[i]
      else
        result += count.to_s + str[i]
      end

      i = j
    end
  end
  result
end
