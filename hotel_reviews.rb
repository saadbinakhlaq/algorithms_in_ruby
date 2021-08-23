user_input = 'breakfast beach citycenter location metro view staff price'

hotel = [
1,
'This hotel has a nice view of the citycenter. The location is perfect',

2,
'The breakfast is ok. Regarding the location, it is quite far from citycenter but price is cheap so it is worth.',

1,
'Location is excellent, 5 minutes from citycenter. There is also a metro station very close to the hotel.',

1,
"They said that I couldn't take my dog and there were other guests with dogs! That is not fair.",

2,
"Very friendly staff and good cost-benefit ratio. Its location is a bit far from citycenter."
]

number_of_reviews = 5

hotels = Hash.new { |h, k| h[k] = [] }

(0...number_of_reviews).each do |i|
  get_index = gets.chomp.to_i
  hotels[get_index] << gets.chomp
end

hotels.each do |k, v|
  hotels[k] = v.join(' ').split(' ').map { |word| word.gsub(/[^a-zA-Z]/, '') }.inject(Hash.new(0)) { |tmp, v| tmp[v] += 1; tmp }
end

hotels.each do |k, v|
  score = 0
  user_input.split.each do |value|
    if hotels[k][value]
      score += hotels[k][value]
    end
  end
  hotels[k]['score'] = score
end

hotels.sort_by{ |k, _| -hotels[k]['score'] }.map{ |hash| hash[0] }.join(' ')