# class Ship
# end
# class CivilShip < Ship
#   attr_accessor :hold, :crane
# end
# class WarShip < Ship
#   attr_accessor :rockets, :torpedoes
# end
# submarine = WarShip.new
# dry_cargo = CivilShip.new
# container = CivilShip.new
# container.instance_eval ('undef :hold, :hold=')
# p container.methods


# class User
#   attr_accessor :name, :surname, :email
# end
# class Guest < User
# end

# class Moderator < User
#   def say
#     self.class
#   end
#   alias to_s say
# end
# moderator = Moderator.new
# p moderator.say


# class Person
#   attr_accessor :name, :surname
# end
# class User < Person
# end
# user = User.new
# user.name = 'bob'
# p user.name
# class Person
#   def self.new
#     'restrict to create'
#   end
# end
# p Person.new
