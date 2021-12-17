class TrafficLights
  attr_accessor :state

  def initialize(state)
    transition_to(state)
  end

  def transition_to(state)
    p "traffic lights is on #{state.class}"
    @state = state
    @state.context = self
  end

  def switch_to_green
    @state.green
  end

  def switch_to_yellow
    @state.yellow
  end
end

class State
  attr_accessor :context
end

class GreenState < State

  def green
    p 'already green'
  end

  def yellow
    p 'traffic lights become yellow'
    @context.transition_to(YellowState.new)
  end
end

class YellowState < State

  def green
    p 'traffic lights become green'
    @context.transition_to(GreenState.new)
  end

  def yellow
    p 'already yellow'
  end
end

traffic_lights = TrafficLights.new(GreenState.new)
traffic_lights.switch_to_yellow
traffic_lights.switch_to_green
