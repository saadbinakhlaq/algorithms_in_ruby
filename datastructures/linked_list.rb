class Node
  attr_accessor :value,
                :next

  def initialize(value)
    @value = value
  end
end

class LinkedList
  attr_accessor :head,
                :tail

  def initialize(head)
    head  = Node.new(head) unless head.is_a?(Node)
    @head = head
    @tail = head
  end

  def insert(node)
    node       = Node.new(node) unless node.is_a?(Node)
    @tail.next = node
    @tail      = @tail.next
  end

  def inspect
    current = @head
    while (!current.nil?)
      print "#{current.value} -> "
      current = current.next
    end
    puts "\n"
  end

  def iterate
    if block_given?
      current = @head

      while !current.nil?
        yield current
        current = current.next
      end
    else
      inspect
    end
  end

  def reverse
    prev_node    = nil
    current_node = @head

    while (!current_node.nil?)
      next_node         = current_node.next
      current_node.next = prev_node
      prev_node         = current_node
      current_node      = next_node
    end

    @head = prev_node
  end

  def reverse_every_k(number)
    @head = reverse_k_elems(@head, number)
  end

  private

  def reverse_k_elems(head, k)
    current_node = head
    next_node    = nil
    prev_node    = nil
    count        = 0

    while(!current_node.nil? && count < k)
      next_node         = current_node.next
      current_node.next = prev_node
      prev_node         = current_node
      current_node      = next_node
      count             += 1
    end

    head.next = reverse_k_elems(next_node, k) unless next_node.nil?

    prev_node
  end
end

def build_linked_list
  linked_list = LinkedList.new(1)
  linked_list.insert(2)
  linked_list.insert(3)
  linked_list.insert(4)
  linked_list.insert(5)
  linked_list
end
