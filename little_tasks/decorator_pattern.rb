class Message
  def send_message
    'message'
  end
end

class Decorator
  attr_accessor :message

  def initialize(message)
    @message = message
  end
end

class EmailDecorator < Decorator
  def send_message
    "EmailDecorator #{@message.send_message}"
  end
end

class ViberDecorator < Decorator
  def send_message
    "ViberDecorator #{@message.send_message}"
  end
end

message = Message.new
p message.send_message

email_decorator = EmailDecorator.new(message)
viber_decorator = ViberDecorator.new(email_decorator)

p viber_decorator.send_message
