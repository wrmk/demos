# COLORS = {
#   red: 'красный',
#   orange: 'желтый'
# }

# COLORS.each do |key,value|
#   define_method key do
#     value
#   end
# end

# p red

module Fivable
  def self.included(cls)
    cls.class_eval do
      def initialize
        @@count ||= 0
        @@count += 1
        raise "no more 5 instances" if @@count > 5
      end

    end
  end
end

class Some
  include Fivable
end

some1 = Some.new
some2 = Some.new
some3 = Some.new
some4 = Some.new
some5 = Some.new
some6 = Some.new
