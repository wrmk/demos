# arr = [2,5]
# def arr.my_map(&block) # analogue map iterator
#    self.reduce([]){|arr2, x| arr2 << (yield x)}
# end
# p arr.my_map{|x| x*x}

arr = [2,5,1,15]
def arr.my_select(&block) #analogue select iterator
   self.each_with_object([]){|x, arr2| arr2 << x if yield x}
end
p arr.my_select{|x| x > 2}
