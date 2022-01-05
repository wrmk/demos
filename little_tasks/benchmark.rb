require 'benchmark'
require_relative 'quick_sort'
require_relative 'merge_sort'

class Array
  include QuickSort
end


arr = (0..1_000_000).to_a.shuffle
# p arr.quick_sort
p Benchmark.measure{merge_sort(arr)}
p Benchmark.measure{merge_sort_v2(arr)}
p Benchmark.measure{arr.quick_sort}

