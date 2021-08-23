require 'pry'
def max_number(number)
  stringed_number = number.to_s.each_char.to_a

  swapped = false

  stringed_number.each_with_index do |value, index|
    if value.to_i == 9 then next end

    max_number = 0
    max_index  = nil
    ((index + 1)...stringed_number.size).each do |i|
      if stringed_number[i].to_i > max_number
        max_number = stringed_number[i].to_i
        max_index  = i
      end
    end


    if max_number > value.to_i && !max_index.nil?
      lesser_number_index = stringed_number.index(value)
      max_number_index    = max_index


      stringed_number[lesser_number_index],
        stringed_number[max_number_index] = stringed_number[max_number_index],
                                                                  stringed_number[lesser_number_index]
      swapped = true
    end

    break if swapped
  end

  stringed_number.join.to_i
end

puts max_number(93218910471211292416)
puts max_number(93561)
puts max_number(596)
puts max_number(10234)
puts max_number(93218910471211292416)
puts max_number(98761111)
puts max_number(555555555555555555596)
puts max_number(120)
puts max_number(99012)