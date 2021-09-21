edges = [
  ['w', 'x'],
  ['x', 'y'],
  ['z', 'y'],
  ['z', 'v'],
  ['w', 'v']
]

def convert_to_adjacency_list(edges)
  adjacency = Hash.new do |h, k|
    h[k] = []
  end
  edges.each do |edge|
    adjacency[edge[0]] << edge[1] 
    adjacency[edge[1]] << edge[0] 
  end
  adjacency
end

def shortest_path(edges, node_a, node_b)
  graph = convert_to_adjacency_list(graph)

  visited = Set.new()
  visited << node_a

  queue = [[node_a, 0]]
  while queue.length > 0
    current, distance = queue.shift
    return distance if current == node_b

    graph[current].each do |neighbor|
      if !visited.include?(neighbor)
        visited << neighbor
        queue.push([neighbor, distance + 1])
      end
    end
  end

  return -1
end
