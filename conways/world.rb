class World
  class CellNotFound < StandardError; end

  attr_reader :cells, :cell_at
  def initialize(height:, width:)
    @height = height
    @width = width
    @cells = []
  end

  def build
    @cells = []
    @height.times do |h|
      @cells << []
      @width.times do |w|
        @cells[h] << 'cell'
      end
    end
    @cells
  end

  def cell_at(x, y)
    if cells[x]
      cells[x][y]
    end
    raise CellNotFound
  end

  def next_generation
    affected = []
    cells.flatten.each do |cell|
      case
      when cell.live? && cell.live_neighbors_count > 3
        affected << cell
      when cell.live? && cell.live_neighbors_count < 2
        affected << cell
      when cell.dead? && cell.live_neighbors_count == 3
        affected << cell
      end
    end

    affected.map(&:toggle)
  end
end
