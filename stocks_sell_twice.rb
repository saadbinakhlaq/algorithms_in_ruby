def max_profit_selling_stocks(array)
  if array.length < 2
    raise IndexError, 'Size of elements should be equal or greater than 2'
  end

  max_profit              = 0
  min_price               = array[0]
  forward_max_profits     = [0] * array.size

  array.each_with_index do |current_price, index|
    potential_profit           = current_price - min_price
    max_profit                 = [max_profit, potential_profit].max
    min_price                  = [min_price, current_price].min
    forward_max_profits[index] = max_profit
  end

  max_price               = array[-1]
  backward_profit         = 0
  backward_max_profits    = [0] * array.size
  max_profit              = 0
  
  (array.size - 1).downto(0) do |index|
    current_price         = array[index]
    potential_profit      = max_price - current_price
    backward_profit       = [backward_profit, potential_profit].max
    max_price             = [max_price, current_price].max

    if index == 0
      max_profit          = [max_profit, 0 + backward_profit].max
    else
      max_profit          = [max_profit, forward_max_profits[index - 1] + backward_profit].max
    end

    backward_max_profits[index] = backward_profit
  end

  max_profit
  p forward_max_profits
  p backward_max_profits
end


puts max_profit_selling_stocks([12, 11, 13, 9, 12, 8, 14, 13, 15])