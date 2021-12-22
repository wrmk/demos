def quick_sort(arr)

  if arr.size < 2
    return arr
  end

  pivot = arr.delete_at(arr.size/2)

  low, high = arr.partition{|val| val < pivot}
  low = quick_sort(low)
  high = quick_sort(high)

  low + [pivot] + high

end

arr = Array.new(20){rand(100)}.uniq
p arr
p quick_sort(arr)


