require 'benchmark'
require_relative 'quick_sort'
require_relative 'merge_sort'

using QuickSort
# Array.include QuickSort


arr = (0..1_00).to_a.shuffle
arr2 = Array.new(100){Array('a'..'z').sample(rand(1..25)).join}

# p arr2.quick_sort{|val| -val.size}
p arr.quick_sort{|val| val}
# p Benchmark.measure{merge_sort(arr)}
# p Benchmark.measure{merge_sort_v2(arr)}
# p Benchmark.measure{arr.quick_sort}

