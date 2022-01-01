class Vector
  attr_accessor :point1, :point2
  def initialize(x1,y1,x2,y2)
    @point1 = Point.new(x1,y1)
    @point2 = Point.new(x2,y2)
  end

  def distance
    Math.sqrt((point2.x - point1.x)**2 + (point2.y - point1.y)**2)
  end

  class Point
    attr_accessor :x, :y
    def initialize(x,y)
      @x = x
      @y = y
    end
  end
end

vector = Vector.new(1,1,3,1)
p vector.distance
