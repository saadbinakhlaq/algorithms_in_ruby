def make_change(coin_value_list, change, min_coins)
  (1..change + 1).each do |cents|
    coin_count = cents
    coin_value_list.select { |x| x <= cents }.each do |j|
      if min_coins[cents - j] + 1 < coin_count
        coin_count = min_coins[cents - j] + 1
      end
    end
    min_coins[cents] = coin_count
  end
  puts min_coins
  min_coins[change]
end


make_change([2, 3, 5], 11, [0] * 11)