class Car

  MILES_PER_GALLON = 20 #  константа, заглавные буквы согласно правилу создания констант

  attr_reader :fuel

  def initialize
    @fuel = 0
  end

  def add_fuel amount 
    @fuel += amount
  end

  def range
    @fuel*MILES_PER_GALLON
  end

end
