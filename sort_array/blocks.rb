arr = [2,5]
def arr.my_map(&block)
   # p arr2 = self.each{block}
   p arr2 = self.each{yield}
end

arr.my_map{|x| x*x}