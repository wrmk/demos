require "finite_machine"
TrafficLights = FiniteMachine.define do
  initial :red


  event :ready, :red    => :yellow
  event :go,    :yellow => :green
  event :stop,  :green  => :red


  on_before(:ready) { |event| puts 'before ready' }
  on_after(:go)     { |event| puts 'after go' }
  on_before(:go) { |event| puts 'before go' }
  on_before(:stop)  { |event| puts 'before stop'  }
end

fm = TrafficLights.new
fm.state # => red
fm.ready # => true, prints “before ready”
fm.state # => yellow
fm.go # => true prints “before go”, “after go”
 p fm.state # => green
p fm.ready # => raise FiniteMachine::IncorrectTransitionError
