require "matrix"

class Puzzle
  def initialize(filename)
    @filename = filename
    @matrix = load_puzzle
  end

  def move(point, direction)
    v = value(point.x, point.y)
    new_x = point.x + (direction[0] * v)
    new_y = point.y + (direction[1] * v)
    Point.new(new_x, new_y, value(new_x, new_y))
  end

  def start_position
    Point.new(11, 11, value(11, 11))
  end

  private

  def value(x, y)
    @matrix[x, y]
  end

  def load_puzzle
    data = []
    File.open(@filename).each do |l|
      data << l.split("").map do |e|
        e = -1 if e == " "
        e.to_i
      end
    end
    Matrix[*data]
  end
end
