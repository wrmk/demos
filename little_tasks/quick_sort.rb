require 'benchmark'

def quick_sort(arr)
  if arr.size < 2
    return arr
  end

  pivot = arr.delete_at(arr.size/2)
  low, high = arr.partition{|val| val <= pivot}
  low = quick_sort(low)
  high = quick_sort(high)

  low + [pivot] + high
end

arr = Array.new(100000){rand(1000)}

p Benchmark.measure{quick_sort(arr)}
p Benchmark.measure{arr.sort!}



