require 'singleton'

class Logger 
  #чтобы экземпляр класса вызывался единожды
  include Singleton

  def initialize
    @f = File.open 'log.txt', 'a'
  end

  # instance method
  def log_something what
   @f.puts what
  end

  #чтобы экземпляр класса не могли создать извне
  private_class_method :new

end