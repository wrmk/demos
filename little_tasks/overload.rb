# p 100.to_s(16).to_i

# arr = %i[first second third]
# p Hash[arr.zip(1..arr.size)]

# arr = %w[first second third]
# hash = {}
# arr.each_with_index{|elem,index| hash[elem.to_sym] = "#{(elem.capitalize.chars - elem.chars[1..-3]).join} (#{index + 1})"}
# p hash

# string = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
# arr = []
# string = string.gsub!(/[,\.]/,'').split

# # string.each{|elem| arr << elem if elem.size > 5}
# # p arr.sort, arr.size

# string.each{|word| arr << word if word.chars[0] == 'd'}
# p arr.uniq.sort_by(&:length)

arr1= %w[red orange yellow green]
arr2= %w[красный оранжевый желтый зеленый]

p arr1.zip(arr2).to_h.transform_keys!(&:to_sym)