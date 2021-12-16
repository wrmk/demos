class Subject
  attr_accessor :state

  def initialize
    @observers = []
  end

  def attach(observer)
    @observers << observer
  end

  def notify
    @observers.each{|observer| observer.update(self)}
  end

  def logic
    @state = rand(1..5)
    notify
  end
end

class Observer
  def update(subject)
    if subject.state < 3
      p 'all is fine'
    else
      p 'something wrong'
    end
  end
end

subject = Subject.new
observer = Observer.new
subject.attach(observer)
subject.logic
