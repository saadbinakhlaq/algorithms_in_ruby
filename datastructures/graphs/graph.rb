# a->c
# |  |
# b  e
# |
# d
# |
# f
# 

graph = {
  'a' => ['b', 'c'],
  'b' => ['d'],
  'c' => ['e'],
  'd' => ['f'],
  'e' => [],
  'f' => []
}

def depth_first_search(graph, source)
  stack = [source]

  while stack.length > 0
    current = stack.pop()
    puts current
    graph[current].each do |neighbor|
      stack.push(neighbor)
    end
  end
end

def depth_first_search_rec(graph, source)
  puts source
  graph[source].each do |neighbor|
    depth_first_search_rec(graph, neighbor)
  end
end

def breadth_first_search(graph, source)
  queue = [source]

  while queue.length > 0
    current = queue.shift
    puts current
    graph[current].each do |neighbor|
      queue.push(neighbor)
    end
  end
end