class Matrices
  def initialize(matrix)
    @matrix = matrix
  end

  def rotate_clockwise
    duplicate_matrix = @matrix.map { |row| row.dup }
    n = duplicate_matrix.size

    (0...n).each do |x|
      (n - 1).downto(0) do |y|
        duplicate_matrix[x][n - y - 1] = @matrix[y][x]
      end
    end

    duplicate_matrix
  end

  def rotate_asymmetrical
    rows    = @matrix.size
    columns = @matrix.first.size

    rotated_matrix = (0...columns).map { |i| [0] * rows }

    (0...columns).each do |column|
      (0...rows).each do |row|
        rotated_matrix[column][row] = @matrix[rows - 1 - row][column]
      end
    end

    rotated_matrix
  end

  def rotate_anticlockwise
    duplicate_matrix = @matrix.map { |row| row.dup }
    n = duplicate_matrix.size

    (0...n).each do |x|
      (n - 1).downto(0) do |y|
        duplicate_matrix[x][n - y - 1] = @matrix[n - 1 - y][n - 1 - x]
      end
    end

    duplicate_matrix
  end

  def inspect
    self.class.display(@matrix)
  end

  def display(matrix)
    self.class.display(matrix)
  end

  def self.display(matrix)
    matrix.each do |row|
      puts row.join('|')
    end
  end
end

matrix = [[1,2,3], [4,5,6], [7, 8, 9], [10, 11, 12]]
matrix = Matrices.new matrix

Matrices.display(matrix.rotate_asymmetrical)