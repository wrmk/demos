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

# vector = Vector.new(1,1,3,1)
# p vector.distance


class Unit
  attr_accessor :employees
  def initialize
    @employees = []
  end

  def add(role:, name:)
    employee = Employee.new(role: role,name: name)
    @employees << employee.to_s
  end

  def remove(name:)
    @employees.delete(name)
  end

  class Employee
    attr_accessor :role, :name
    def initialize(role:, name:)
      @role = role
      @name = name
    end

    def to_s
      name
    end
  end
end

unit = Unit.new
unit.add(role: 'teamlead', name:'John')
p unit.employees
unit.remove(name: 'John')
p unit.employees
