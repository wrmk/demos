# class Factory

#   attr_reader :total, :offers

#   def initialize
#     @total = 0
#     @offers = {teddy_bear: 0, ball: 0, cube: 0} 
#   end

#   def build(arg)
#     @total += 1
#     @offers[arg] +=1
#     case arg
#     when :teddy_bear then TeddyBear.new
#     when :ball then Ball.new
#     when :cube then Cube.new
#     end
#   end


#   class TeddyBear
#   end
#   class Ball
#   end
#   class Cube
#   end
# end

# factory = Factory.new

# factory.build(:cube)
# factory.build(:cube)
# factory.build(:cube)
# factory.build(:ball)
# factory.build(:teddy_bear)

# p factory.total
# p factory.offers

# class Integer
#   def minutes
#     self * 60
#   end
#   def hours
#     self * 3600
#   end
#   def days
#     self * 86400
#   end
# end

# p 25.minutes

# class Material
#   @@status = 'solid'
#   def status
#     @@status
#   end
#   def melt
#     @@status = 'liquid' if @@status == 'solid'
#   end
#   def sublime
#     @@status = 'gaz' if @@status == 'solid'
#   end 
#   def freeze
#     @@status = 'melt' if @@status == 'liquid'
#   end
#   def boil
#     @@status = 'gaz' if @@status == 'liquid'
#   end
#   def condense
#     @@status = 'liquid' if @@status == 'gaz'
#   end   
#   def deposit
#     @@status = 'solid' if @@status == 'gaz'
#   end
# end

# material = Material.new
# material.sublime
# material.condense

# puts material.status

# require "state_machine"
# class Material
#   state_machine :status, initial: :solid do
#     event :melt do
#       transition solid: :liquid
#     end
#     event :freezing do
#       transition liquid: :solid
#     end
#     event :boil do
#       transition liquid: :gaz
#     end
#     event :condense do
#       transition gaz: :liquid
#     end
#     event :sublime do
#       transition solid: :gaz
#     end
#     event :deposit do
#       transition gaz: :solid
#     end
#     state all do
#       p self.state.name
#     end
#   end
# end

# material = Material.new
# material.melt
# material.boil
# material.freezing

# class Hello
#   def initialize(name)
#     @name = name
#   end
#   def say
#     puts "Hello, #{@name}!"
#   end
# end  

# h = Hello.new("ahaha")
# h.say

# class User
#   attr_accessor :name, :surname, :second_name
#   def initialize(name:, surname:, second_name:)
#     @name = name
#     @surname = surname
#     @second_name = second_name
#   end    
# end

# user1 = User.new(name: "Bob", surname: "swan", second_name: "fifth")
# user2 = User.new(name: "Jess", surname: "longest", second_name: "third")

# class Group
#   def initialize(group = [])
#     @group = group
#   end
#   def each
#     @group.each{|user| p user}
#   end
# end

# group = Group.new([user1,user2])
# group.each

# class Foo
#   attr_accessor :hash
#   def initialize(hash = {})
#     @hash = hash
#   end
#   def method_missing(name)
#     @hash[name]
#   end
# end

# hash = {
#   hello: "привет",
#   bye: 'пока'
# }

# foo = Foo.new(hash)
# p foo.hello

class List
  def initialize(*args)
    @args = args
  end 

  def each(&block)
    @args.each{|arg| yield arg}
  end  
end

list = List.new('df','sdfsdf')
list.each{|arg| p arg}