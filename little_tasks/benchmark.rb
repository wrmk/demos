require 'benchmark'
require_relative 'quick_sort'
require_relative 'merge_sort'


arr = (0..100000).to_a.shuffle

p Benchmark.measure{quick_sort(arr)}
p Benchmark.measure{merge_sort(arr)}

