def reversal(a_list)
  start = 0
  last = a_list.size - 1

  while start < last do
    a_list[start] = (a_list[start].ord^a_list[last].ord).to_s(2)
    a_list[last] = (a_list[last].ord^a_list[start].to_i(2)).to_s(2)
    a_list[start] = (a_list[start].to_i(2)^a_list[last].to_i(2)).to_s(2)
    a_list[start] = a_list[start].to_i(2).chr
    a_list[last] = a_list[last].to_i(2).chr
    
    start = start + 1
    last = last - 1
  end

  a_list
end
