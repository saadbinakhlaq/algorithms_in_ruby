def get_max_profit(array_of_rates)
  if array_of_rates.length == 1
    raise IndexError, 'Getting a profit requires at least 2 values'
  end

  min_price = array_of_rates[0]
  max_profit = array_of_rates[1] - min_price

  array_of_rates.each_with_index do |current_price, index|
    if index == 0 then next end

    potential_profit = current_price - min_price

    max_profit = [potential_profit, max_profit].max

    min_price = [min_price, current_price].min
  end
  max_profit
end

p get_max_profit ARGV[0].split(',').map(&:to_i)
