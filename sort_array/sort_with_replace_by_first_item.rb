array= [12,30,45,9,3,15,2,8]

def func(arr) 
  arr.size.times do |x|
    if arr[0] >= arr[x] then # меняем все элементы местами через нулевой по элемент х
      for y in (1..x) do
        replace(arr,0,y)
      end
    elsif arr[x]<arr[x-1] then #вычисляем какой элемент z больше х, меняем х и нулевой, и меняем всё местами в интервале z..x через нулевой
      for z in (1..(x-1)) do
        if arr[x] <= arr[z] then
          replace(arr,0,x)
          for k in (z..x) do
            replace(arr,0,k)
          end
          break
        end
      end     
    end
  end
end

def replace(arr,elem1,elem2)
  arr[elem1], arr[elem2] = arr[elem2], arr[elem1]
  p arr
end
p func(array)