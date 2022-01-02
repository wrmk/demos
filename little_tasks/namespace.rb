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

  def show(role: nil)
    if role
      list = employees.select{|employee| employee.role == role}
    else
      list = employees.sort_by{|employee| employee.name}
    end
    list.each{|employee| p "#{employee.name} is #{employee.role}"}
  end

  def add(role:, name:)
    employees << Employee.new(role: role,name: name)
  end

  def remove(name:)
    employees.delete_if{|employee| employee.name == name }
  end

  def edit(role:, name:)
    employees.find{|employee| employee.name == name}.role = role
  end

  class Employee
    attr_accessor :role, :name
    def initialize(role:, name:)
      @role = role
      @name = name
    end
  end

end

unit = Unit.new
unit.add(role: 'teamlead', name:'John')
p unit.employees
unit.remove(name: 'John')
p unit.employees
unit.add(role: 'backend', name:'Zessica')
p unit.employees
unit.edit(role: 'frontend', name: 'Zessica')
unit.add(role: 'teamlead', name:'Bohn')
unit.add(role: 'backend', name:'Bratt')
p unit.employees
unit.show
unit.show(role: 'backend')
