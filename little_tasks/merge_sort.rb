def merge_sort(arr)
  if arr.size < 2
    return arr
  elsif arr.size < 3
    arr[0], arr[1] = arr[1], arr[0] if arr[1] < arr[0]
    return arr
  end

  arr = arr.each_slice((arr.size + 1)/2).to_a
  left = merge_sort(arr[0])
  right = merge_sort(arr[1])
  summary = []

  while left.size > 0 || right.size > 0
    if left.size > 0 && right.size > 0
      summary << (left[0] < right[0] ? left.delete_at(0) : right.delete_at(0))
    else
      summary << (left.delete_at(0) || right.delete_at(0))
    end
  end
  summary
end
