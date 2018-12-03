class Array
  def quicksort
    return self if length <= 1

    pivot = self.first
    left = self[1..-1].select { |el| el < self.first }
    right = self[1..-1].select { |el| el > self.first }

    quick_sort(left) + pivot + quicksort(right)
  end
end
