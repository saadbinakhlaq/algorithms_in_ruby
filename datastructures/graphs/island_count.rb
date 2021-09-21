=begin
write a function that takes in a grid containing Ws and Ls. W represents water and L represents Land.
The function should return the number of islands on the grid.
=end

grid = [
  ['W', 'L', 'W', 'W', 'W'],
  ['W', 'L', 'W', 'W', 'W'],
  ['W', 'W', 'W', 'L', 'W'],
  ['W', 'W', 'L', 'L', 'W'],
  ['L', 'W', 'W', 'L', 'L'],
  ['L', 'L', 'W', 'W', 'W']
]

def explore(grid, r, c, visited)
  row_inbounds = 0 <= r && r < grid.size
  col_inbounds = 0 <= c && c < grid[0].size
  return false if (!row_inbounds || !col_inbounds)

  return false if grid[r][c] == 'W'

  pos = [r, c]
  return false if visited.include?(pos)

  visited << pos
  explore(grid, r - 1, c, visited)
  explore(grid, r + 1, c, visited)
  explore(grid, r, c + 1, visited)
  explore(grid, r, c - 1, visited)

  true
end

def island_count(grid)
  visited = Set.new
  count = 0
  (0...grid.size).each do |r|
    (0...grid[0].size).each do |c|
      if explore(grid, r, c, visited) == true
        count += 1
      end
    end
  end

  count
end