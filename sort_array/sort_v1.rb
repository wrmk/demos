# sort with replace through first item
array= [12,30,45,9,3,15,2,8]

def func(arr) 
  arr.size.times do |x|
    if arr[0] >= arr[x] # replace in interval all elem 
      for y in (1..x)
        replace(arr,y)
      end
    elsif arr[x]<arr[x-1] #check position where we have to put elem,replace elem and 0 position and replace all items in 1..x position
      for z in (1...x)
        if arr[x] <= arr[z]
          replace(arr,x)
          for k in (z..x) 
            replace(arr,k)
          end
          break
        end
      end     
    end
  end
end

def replace(arr,elem)
  arr[0], arr[elem] = arr[elem], arr[0]
  p arr
end
func(array)