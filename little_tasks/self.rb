class Integer
  def kilobytes
    self * 1024
  end
  def megabytes
    kilobytes * 1024
  end
  def gigabytes
    megabytes * 1024
  end
end
# p 5.megabytes

class User
  attr_accessor :name, :surname, :email
  def initialize
    yield self
  end
end

user = User.new do |t|
  t.name = 'john'
  t.surname = 'willow'
  t.email = '32@mail.com'
end

p user.name
