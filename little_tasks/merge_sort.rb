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
        left[0] < right[0] ? left.shift : right.shift
      else
        left.shift || right.shift
      end
    end
  end
  summary
end


def merge_sort_v2(arr)
  if arr.size < 3
    arr[0], arr[1] = arr[1], arr[0] if arr.size == 2 && arr[1] < arr[0]
    return arr
  end

  left,right = arr.each_slice((arr.size + 1)/2).to_a
  left = merge_sort_v2(left)
  right = merge_sort_v2(right)

  summary = []
  i = 0
  k = 0

  while left[i] && right[k]
    if left[i] < right[k]
      summary << left[i]
      i+=1
    else
      summary << right[k]
      k+=1
    end
  end
  summary += left[i..-1] + right[k..-1]
end
