array= [12,30,45,9,3,15,2,8]

def func(arr) 
  arr.size.times do |x|
    if arr[0] >= arr[x] then
    for y in (1..(x-1)) do
      replace(arr,0,y)
      p arr
    end
    replace(arr,0,x)
  p arr
  elsif arr[x]<arr[x-1] then
    for z in (1..(x-1)) do
      if arr[x] <= arr[z] then
        replace(arr,0,x)
        p arr
        for k in (z..x) do
          replace(arr,0,k)
          p arr
        end
        break
      end
    end
          
    end
  end
end

def replace(arr,elem1,elem2)
  arr[elem1], arr[elem2] = arr[elem2], arr[elem1]
end
p func(array)