def get_pairs(arr,sum) # выводит новый массив с парами значений, равными аргументу
  arr2=[]
  (arr.size - 1).times do
    for index in 1...arr.size do
      if (arr[0] + arr[index]) == sum
        arr2 << [arr[0],arr[index]]
        arr.delete_at(0)
        arr.delete_at(index-1)
        break
      elsif index == arr.size - 1
        arr.delete_at(0)
      end
    end
  end
  arr2
end

p get_pairs([-5,10,2,2,3,5,0,10,3],5)
p get_pairs([22,3,5,0,2,2],5)
p get_pairs([5,5,5,0,0,0,5],5)