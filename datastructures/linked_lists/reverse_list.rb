class Node
  def initialize(val)
    @val = val
    @next = nil
  end
end

def reverse_list(head)
  prev = nil
  current = head

  while current != nil
    next_ = current.next
    current.next = prev
    prev = current
    current = next_
  end

  return prev
end