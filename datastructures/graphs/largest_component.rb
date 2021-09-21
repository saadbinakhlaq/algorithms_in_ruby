=begin
     5
     | \
     |  \
 1-- 0 -- 8

 4 -- 2
 \   /
  \ /
   3
=end

graph = {
  0 => [8, 1, 5],
  1 => [0],
  5 => [0, 8],
  8 => [0, 5],
  2 => [3, 4],
  3 => [2, 4],
  4 => [3, 2]
}

def explore_size(graph, node, visited)
  return 0 if visited.include?(node)
  visited << node
  size = 1

  graph[node].each do |neighbor|
    size += explore_size(graph, neighbor, visited)
  end

  size
end

def largest_component(graph)
  longest = 0
  visited = Set.new
  graph.keys.each do |node|
    size = explore_size(graph, node, visited)
    if size > longest
      longest = size
    end
  end
  longest 
end