class Grid
  attr_accessor :cells, :width, :height

  def initialize(width, height)
    @width = width
    @height = height
    @cells = []
 
    height.times do
      cells << ([Cell.dead] * width)
    end

    height.times do |y|
      width.times do |x|
        cells[y][x].neighbours = neighbours_for(y, x)
      end
    end
  end

  def neighbours_for(y, x)
    [
      [-1, -1], [-1, 0], [-1, 1], # under
      [0, -1], [0, 1], # sides
      [1, -1], [1, 0], [1, 1] # over
    ].map do |(y_delta, x_delta)|
      cells[(y + y_delta) % height][(x + x_delta) % width]
    end
  end

  def print_grid
    height.times do |y|
      width.times do |x|
        cell = cells[y][x]
        cell.print_cell
      end
      print "\n"
    end
  end

  def tick
    print_grid
    new_grid = dup_grid

    changes = []
    height.times do |y|
      width.times do |x|
        cell = cells[y][x]
        changes << cell.next_state
      end
    end

    height.times do |y|
      width.times do |x|
        cell = cells[y][x]
        cell.alive = changes[y * x]
      end
    end

    tick
  end

end