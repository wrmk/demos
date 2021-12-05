class Ship
end
class CivilShip < Ship
  attr_accessor :hold, :crane
end
class WarShip < Ship
  attr_accessor :rockets, :torpedoes
end

submarine = WarShip.new
dry_cargo = CivilShip.new
container = CivilShip.new
container.instance_eval ('undef :hold, :hold=')


p container.methods

