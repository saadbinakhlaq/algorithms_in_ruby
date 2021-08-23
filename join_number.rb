require 'pry'

def solution(a, b)
  # write your code in Ruby 2.2
  max     = 100_000_000
  a_array = a.to_s.each_char.to_a
  b_array = b.to_s.each_char.to_a
  
  result  = []
  toggle  = 0

  until a_array.empty? || b_array.empty?
    if toggle == 0
      result << a_array.shift
      toggle = 1
    else
      result << b_array.shift
      toggle = 0
    end
  end
  result       = result + a_array + b_array
  
  final_result = result.join.to_i
  
  if final_result > max
    return -1
  else
    final_result
  end
end

a = 1234
b = 0

puts solution(a, b)

