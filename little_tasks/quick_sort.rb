module QuickSort
  def quick_sort
    if self.size < 2
      return self
    end

    pivot = self.delete_at(rand(0...self.size))
    low, high = self.partition{|val| val < pivot}
    low = low.quick_sort
    high = high.quick_sort

    low + [pivot] + high
  end

  def quick_sort_v2(&block)
    if self.size < 2
      return self
    end

    pivot = self.delete_at(rand(0...self.size))
    left, right = self.partition do |val|
      if block_given?
        (block.call val) < (block.call pivot)
      else
        val < pivot
      end
    end
    left = left.quick_sort_v2(&block)
    right = right.quick_sort_v2(&block)

    left + [pivot] + right
  end
end
