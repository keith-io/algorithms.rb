class Array
  def my_inject(accumulator = nil, &block)
    i = 0

    if accumulator.nil?
      accumulator = self.first
      i = 1
    end

    while i < self.length
      accumulator = block.call(accumulator, self[i])
      i += 1
    end

    accumulator
  end
end
