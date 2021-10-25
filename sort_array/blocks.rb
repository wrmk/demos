# arr = [2,5]
# def arr.my_map(&block) # analogue map iterator
#    self.reduce([]){|arr2, x| arr2 << (yield x)}
# end
# p arr.my_map{|x| x*x}

# arr = [2,5,1,15]
# def arr.my_select(&block) #analogue select iterator
#    self.each_with_object([]){|x, arr2| arr2 << x if yield x}
# end
# p arr.my_select{|x| x > 2}

arr = [5,5]
def arr.my_reduce(*args)# analogue reduce
   if args.size == 1 #if argument given, summary = argument
      summary = args[0]
   else
      summary = self.first# if not summary = first elem of array, and shift array to iterate
      self.shift
   end
   self.each{|elem| summary = yield summary, elem}
   summary
end
p arr.my_reduce(2){|summ, elem| summ * elem}