class LinkedListNode
  attr_accessor :data, :next, :prev, :arbitrary
  def initialize(data)
  @data = data
  @next = nil
  end
end

def insert_at_head(head, data)
  new_node = LinkedListNode.new(data)
  new_node.next = head
  return new_node
end

def insert_at_tail(head, node)
  if (!head)
    return node
  end

  temp = head

  while (temp.next)
    temp = temp.next
  end

  temp.next = node
  return head
end

def create_random_linked_list(length)
  list_head = nil
  length.times do |i|
    list_head = insert_at_head(list_head, (rand(100) + 1).floor)
  end
  return list_head
end

def create_linked_list(lst)
  list_head = nil
  lst.reverse!
  for x in 0 .. lst.length-1
    list_head = insert_at_head(list_head, lst[x])
  end
  return list_head
end

def display(head)
  temp = head
  while (temp)
    print "#{temp.data}"
    temp = temp.next
    if (temp)
      print ", "
    end
  end
  puts
  return
end

class Pair
  attr_accessor :first, :second
  def initialize(first, second)
    @first, @second = first, second
  end
end

