number_sum = gets.chomp.to_i
number_of_entries = gets.chomp.to_i

data = (0...number_of_entries).map do 
  gets.chomp.to_i
end

hash = Hash.new { |h, k| h[k] = number_sum - k }

data.each do |v|
  hash[v]
end

flag = 0

hash.each do |k, v|
  if hash.has_key?(v)
    flag = 1
  end
end


