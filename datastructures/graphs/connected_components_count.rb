#         1 - 2
#           4
#           |
#      5 -- 6 -- 8
#           |
#           7
#      3
# write a function, that takes in the adjacency list of an undirected graph. The function
# should return the number of connected components within the graph

graph = {
  3 => [],
  4 => [6],
  6 => [4, 5, 7, 8],
  8 => [6],
  7 => [6],
  5 => [6],
  1 => [2],
  2 => [1]
}

def explore(graph, current, visited)
  return false if visited.include?(current)

  visited << current

  graph[current].each do |neighbor|
    explore(graph, neighbor, visited)
  end

  true
end

def connected_components_count(graph)
  count = 0
  visited = Set.new

  graph.keys.each do |node|
    if explore(graph, node, visited) == true
      count += 1
    end
  end

  count
end
