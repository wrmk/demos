def quick_sort(arr)
  if arr.size < 2
    return arr
  end

  pivot = arr.delete_at(rand(0...arr.size))
  low, high = arr.partition{|val| val < pivot}
  low = quick_sort(low)
  high = quick_sort(high)

  low + [pivot] + high
end


