class Array
  def merge_sort(&prc)
    prc ||= Proc.new { |x, y| x <=> y }

    midpoint = length / 2
    sorted_left = self.take(midpoint).merge_sort(&prc)
    sorted_right = self.take(midpoint).merge_sort(&prc)

    Array.merge(sorted_left, sorted_right, &prc)
  end

  private
  def merge(left, right, &prc)
    merged = []

    until left.empty? || right.empty?
      case prc.call(left.first, right.first)
      when -1
        merged << left.shift
      when 0
        merged << left.shift
      when 1
        merged << left.shift
      end
    end

    merged += left
    merged += right

    merged
  end
end
