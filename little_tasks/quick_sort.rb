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
end
