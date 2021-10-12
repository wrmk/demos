# colors =[]
# loop do
#   color = gets.strip
#   break if color == 'stop'
#   colors << color
# end
# colors.each{|color| p color}

# colors = %w[синий красный синий зеленый оранжевый      красный        ]
# colors.sort!.reject!.with_index{|color, i| p color == colors[i + 1] }
# p colors

# arr = %w[ cat dog tiger]
# arr.select!{|elem| elem.chars.include?('t') }.map!{|elem| elem.capitalize}
# p arr

# p 'hello world'.chars

# arr = %w[понедельник вторник среда четверг пятница суббота воскресенье]
# arr.select!{|elem| elem.chars[0] == 'с'}
# p arr

# arr = %w[январь февраль март апрель май июнь июль август сентябрь октябрь ноябрь декабрь]
# arr2 = arr.reduce do |summ,elem| 
#   if summ.chars.size < elem.chars.size
#     summ 
#   else
#     elem
#   end
# end
# p arr2

# class User
#   attr_accessor :score
#   def set_name(name)
#     @name = name
#   end
#   def set_score(score)
#     @score = score
#   end
# end
# require 'securerandom'
# users_array = []
# 10.times do
#   user = User.new
#   user.set_name(SecureRandom.alphanumeric(5))
#   user.set_score(rand(1..5))
#   users_array << user
# end
# average_score = users_array.reduce(0){|total_score,user| total_score + user.score}/10
# users_array.each{|user| p user if user.score > average_score}
