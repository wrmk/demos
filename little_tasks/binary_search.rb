def search(arr,val)
  min = 0
  max = arr.size - 1
  count = 0

  while min <= max
    mid = (min + max)/2
    count += 1
    if arr[mid] == val
      return mid
    elsif arr[mid] > val
      max = mid - 1
    else
      min = mid + 1
    end
  end

  'there no such value'
end
range = (1..153).to_a
p search(range, 3)
