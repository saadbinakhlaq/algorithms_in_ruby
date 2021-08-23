def min_number_of_platforms(arrival_array, departure_array)
  array = merge_to_sorted_time_array(arrival_array, departure_array)

  current_number_of_platforms = 1
  max_platforms               = 1
  
  array.each_with_index do |value, index|
    if index == 0 then next end

    value[1] == 'arrival' ? current_number_of_platforms += 1 : current_number_of_platforms -= 1
    max_platforms = [max_platforms, current_number_of_platforms].max
  end

  max_platforms
end

def merge_to_sorted_time_array(arrival_array, departure_array)
  final = []
  until arrival_array.empty? || departure_array.empty?
    if DateTime.parse(arrival_array.first) < DateTime.parse(departure_array.first)
      final << [arrival_array.shift, 'arrival']
    else
      final << [departure_array.shift, 'departure']
    end
  end

  final + arrival_array.map { |i| [i, 'arrival'] } + departure_array.map { |i| [i, 'departure'] }
end


arrival_array = %w(9:00  9:40 9:50  11:00 15:00 18:00)
departure_array = %w(9:10 12:00 11:20 11:30 19:00 20:00)
puts min_number_of_platforms(arrival_array, departure_array)