class Node
  attr_accessor :data, :next

  def initialize(data)
    @data = data
    @next = nil
  end
end

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def prepend(data)
    new_node = Node.new(data)
    new_node.next = @head
    
    @head = new_node
    self
  end

  def append(data)
    new_node = Node.new(data)
    if @head.nil?
      @head = new_node
      return self
    end

    temp = @head.dup

    while !temp.next.nil?
      temp = temp.next
    end

    temp.next = new_node
    self
  end

  def self.create_random_of_size(length)
    linked_list = new
    length.times do |i|
      linked_list.prepend(i)
    end

    linked_list
  end

  def reverse!
    if (@head.nil? || @head.next.nil?)
      return self
    end

    current_head = @head.next
    reversed_list = @head
    reversed_list.next = nil

    while (!current_head.nil?)
      temp = current_head.dup
      current_head = current_head.next
      temp.next = reversed_list
      reversed_list = temp
    end
    @head = reversed_list
    return self
  end
end