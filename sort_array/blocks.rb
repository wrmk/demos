arr = [2,5]
def arr.my_map(&block) # analog map iterator
   self.reduce([]){|arr2, x| arr2 << (yield x)}
end
p arr.my_map{|x| x*x}