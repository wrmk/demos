module QuickSort
  def quick_sort(&block)
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
    left.quick_sort!(&block)
    right.quick_sort!(&block)

    left + [pivot] + right
  end

  def quick_sort!(&block)
    self.replace(quick_sort(&block))
  end
end
