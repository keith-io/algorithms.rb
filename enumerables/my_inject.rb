  def my_inject(accumulator = nil, &block)
    start = 0

    if accumulator.nil?
      accumulator = self.first
      start = 1
    end

     self[start..-1].each  do |el|
       accumulator = block.call(accumulator, el)
     end
     accumulator 
  end
