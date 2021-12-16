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
  def message
    'there is no selected strategy'
  end
end

class FirstStrategy < Strategy
  def message
    'first strategy'
  end
end

class SecondStrategy < Strategy
  def message
    'second strategy'
  end
end

context = Context.new(SecondStrategy.new)
p context.message
