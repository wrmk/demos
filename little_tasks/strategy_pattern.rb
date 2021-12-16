class Context
  attr_reader :strategy
  def initialize(strategy)
    @strategy = strategy
  end
  def message
    @strategy.message
  end
end

class Strategy
  def to_array(string)
    [string]
  end
end

class FirstStrategy < Strategy
  def message
    to_array('first strategy')
  end
end

class SecondStrategy < Strategy
  def message
    'second strategy'
  end
end

context = Context.new(FirstStrategy.new)
p context.message
