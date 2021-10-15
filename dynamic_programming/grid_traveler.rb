=begin
Say that you are a traveler on a 2D grid. You begin in the top-left corner and your goal is to travel
to the bottom-right corner. You may only move down or right

In how many ways can you travel to the goal on a grid with dimensions m*n
=end

def grid_traveler(m, n, memo = {})
  return 1 if m == 1 && n == 1
  return 0 if m == 0 || n == 0
  if memo.key?([m, n])
    return memo[[m, n]]
  else
    memo[[m, n]] = grid_traveler(m - 1, n, memo) + grid_traveler(m, n - 1, memo)
    return memo[[m, n]]
  end
end