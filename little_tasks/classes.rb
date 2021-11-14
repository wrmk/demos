class Factory
  @@toys = 0
  @@types = {teddy_bear: 0, ball: 0, cube: 0}
  def build(arg)
    @@toys += 1
    @@types[arg] +=1
    case arg
    when :teddy_bear then toy = TeddyBear.new
    when :ball then toy = Ball.new
    when :cube then toy = Cube.new
    end
  end

  def total
   @@toys
  end

  def offers
    @@types
  end

  class TeddyBear
  end
  class Ball
  end
  class Cube
  end
end

factory = Factory.new

factory.build(:cube)
factory.build(:cube)
factory.build(:cube)
factory.build(:ball)
factory.build(:teddy_bear)

p factory.total
p factory.offers