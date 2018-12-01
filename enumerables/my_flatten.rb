class Array
  def my_flatten
    flat = []

    self.each do |el|
      if el.is_a?(Array)
        # flat.concat(el.my_flatten)
        flat += el.my_flatten
      else
        flat << el
      end
    end
    flat
  end
end

p [1, 2, 3, [4, [5, 6]], [[[7]], 8]].my_flatten # => [1, 2, 3, 4, 5, 6, 7, 8]
