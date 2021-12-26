def merge_sort(arr)
  if arr.size < 3
    arr[0], arr[1] = arr[1], arr[0] if arr.size == 2 && arr[1] < arr[0]
    return arr
  end

  left,right = arr.each_slice((arr.size + 1)/2).to_a
  left = merge_sort(left)
  right = merge_sort(right)
  summary = []

  while left.size > 0 || right.size > 0
    summary << begin
      if left.size > 0 && right.size > 0
        left[0] < right[0] ? left.delete_at(0) : right.delete_at(0)
      else
        left.delete_at(0) || right.delete_at(0)
      end
    end
  end
  summary
end
