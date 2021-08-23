class Node
  attr_accessor :value,
                :left, 
                :right

  def initialize(value)
    @value = value
    @left  = nil
    @right = nil
  end
end

class BinaryTree
  attr_reader :root

  def initialize 
    @root = nil 
  end 

  def insert(value)
    if @root == nil
      @root = Node.new(value)
    else
      temp = @root
      node = Node.new(value)

      while temp != nil
        if value < temp.value
          if temp.left.nil?
            temp.left = node
            break
          else
            temp = temp.left
          end
        else
          if temp.right.nil?
            temp.right = node
            break
          else
            temp = temp.right
          end
        end
      end
    end
    @root
  end

  def in_order
    in_order_traversal(@root)
  end

  def post_order
    post_order_traversal(@root)
  end

  def pre_order
    pre_order_traversal(@root)
  end

  def levelwise
    queue = []
    dummy = nil
    level = 0
    temp  = root
    queue << temp
    queue << dummy
    puts "level: #{level}"

    loop do
      temp = queue.shift

      if temp == dummy
        if !queue.empty?
          level += 1
          puts "level #{level}"
          queue.push(dummy)
        end
      else
        puts "value #{temp.value}"
        if !temp.left.nil?
          queue.push(temp.left)
        end

        if !temp.right.nil?
          queue.push(temp.right)
        end
      end

      break if queue.empty?
    end
  end

  private

  def in_order_traversal(root)
    temp = root

    if !temp.nil?
      in_order_traversal(temp.left)
      puts temp.value
      in_order_traversal(temp.right)
    end

    nil
  end

  def post_order_traversal(root)
    temp = root

    if !temp.nil?
      post_order_traversal(temp.left)
      post_order_traversal(temp.right)
      puts temp.value
    end

    nil
  end

  def pre_order_traversal(root)
    temp = root

    if !temp.nil?
      puts temp.value
      pre_order_traversal(temp.left)
      pre_order_traversal(temp.right)
    end

    nil
  end
end