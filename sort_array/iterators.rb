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

arr = %w[январь февраль март апрель май июнь июль август сентябbvxcbрь октябрь ноябрь декабрь]

p arr.reduce{|summ,elem| summ if summ.chars.size < elem.chars.size; elem}