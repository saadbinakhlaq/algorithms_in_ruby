class Node
  attr_accessor :left,
                :value,
                :right

  def initialize(value)
    @value = value
    @left  = nil
    @right = nil
  end
end

class BinaryTree
  attr_accessor :root

  def initialize(root)
    root = Node.new(root) unless root.is_a?(Node)

    @root = root
  end

  def insert(node)
    node = Node.new unless node.is_a?(Node)


  end
end
