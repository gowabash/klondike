class Point
  attr_reader :x, :y, :val
  def initialize(x, y, val)
    raise "x must be an integer" unless x.is_a? Fixnum
    raise "y must be an integer" unless y.is_a? Fixnum
    raise "x must be an integer" unless val.is_a? Fixnum
    raise "invalid move" if val == -1
    @x = x
    @y = y
    @value = val
  end

  def winner?
    @value == 0
  end
end
