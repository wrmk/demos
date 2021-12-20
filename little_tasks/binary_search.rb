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


def recursive_search(arr,val)
  min = 0
  max = arr.size - 1
  mid = (min + max)/2

  if arr[mid] == val
    return 'value exist'
  elsif max == min
    return 'there no such value'
  elsif arr[mid] > val
    recursive_search(arr[min...mid],val)
  else
    recursive_search(arr[(mid+1)..max],val)
  end
end

range = (1..153).to_a
p recursive_search(range, 153)
