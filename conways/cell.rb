class Cell
  attr_reader :x, :y, :live

  def initialize(world:, x:, y:)
    @world = world
    @x = x
    @y = y
    @live = false
  end

  def toggle
    live = !live
  end

  def live?
    live
  end

  def dead?
    !live
  end

  def live!
    live = true
  end

  def dead!
    live = false
  end

  def neighbours
    [].tap do |array|
      array << world.cell_at(x, y - 1)
      array << world.cell_at(x, y + 1)

      array << world.cell_at(x + 1, y)
      array << world.cell_at(x + 1, y - 1)
      array << world.cell_at(x + 1, y + 1)

      array << world.cell_at(x - 1, y)
      array << world.cell_at(x - 1, y - 1)
      array << world.cell_at(x - 1, y + 1)
    rescue IndexError

    end

    def live_neighbors
      neighbours.select do |neighbor|
        neighbor.live?
      end
    end

    def live_neighbors_count
      live_neighbors.size
    end
  end
end
