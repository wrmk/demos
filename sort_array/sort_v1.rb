# sort with replace through first item
array= [12,30,45,9,3,15,2,8]

def func(arr) 
  arr.size.times do |x|
    if arr[0] >= arr[x] then # replace in interval all elem 
      for y in (1..x) do
        replace(arr,y)
      end
    elsif arr[x]<arr[x-1] then #check position where we have to put elem,replace elem and 0 position and replace all items in 1..x position
      for z in (1..(x-1)) do
        if arr[x] <= arr[z] then
          replace(arr,x)
          for k in (z..x) do
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