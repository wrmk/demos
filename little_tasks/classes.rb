class Factory

  attr_reader :total, :offers
  
  def initialize
    @total = 0
    @offers = {teddy_bear: 0, ball: 0, cube: 0} 
  end

  def build(arg)
    @total += 1
    @offers[arg] +=1
    case arg
    when :teddy_bear then TeddyBear.new
    when :ball then Ball.new
    when :cube then Cube.new
    end
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