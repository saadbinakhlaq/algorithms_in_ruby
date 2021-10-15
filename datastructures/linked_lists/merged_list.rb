class Node
  def initialize(val)
    @val = val
    @next = nil
  end
end

a = Node.new(1)
b = Node.new(5)
c = Node.new(8)
d = Node.new(10)
e = Node.new(15)

a.next = b
b.next = c
c.next = d
d.next = e

f = Node.new(2)
g = Node.new(3)
h = Node.new(14)
f.next = g
g.next = h

def merged_list(head_1, head_2)
  dummy_head = Node.new(nil)
  tail = dummy_head
  current_1 = head_1
  current_2 = head_2

  while !current_1.nil? && !current_2.nil?
    if current_1.val < current_2.val
      tail.next = current_1
      current_1 = current_1.next
    else
      tail.next = current_2
      current_2 = current_2.next
    end
    tail = tail.next
  end

  tail.next = current_1 if !current_1.nil?
  tail.next = current_2 if !current_2.nil?

  dummy_head.next
end

merged_list(a, f)