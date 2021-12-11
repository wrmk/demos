def max(arr)
  return arr[0] if arr.size == 1
  if arr[0] > max(arr[1..-1])
    arr[0]
  else
    max(arr[1..-1])
  end
end

arr = [1,3,4,5,7,4,15,2]
p max(arr)
