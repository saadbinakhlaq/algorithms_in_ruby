def get_max_profit(prices_from_yesterday)
  if prices_from_yesterday.length < 2
    raise IndexError, 'There should be at least 2 stocks'
  end

  min_price = prices_from_yesterday[0]
  max_profit = prices_from_yesterday[1] - prices_from_yesterday[0]

  prices_from_yesterday.each_with_index do |current_price, index|
    if index == 0 then next end

    potential_profit = current_price - min_price

    max_profit = [max_profit, potential_profit].max
    min_price = [min_price, current_price].min
  end

  max_profit
end
