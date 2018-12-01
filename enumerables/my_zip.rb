class Array 
  def my_zip(*args)
     zipped = Array.new(self.length) { [] }
 
     self.length.times do |i|
       zipped[i] << self[i]
       args.each do |arg|
         zipped[i] << arg[i]
       end
     end
     zipped
  end
end

p a = [ 4, 5, 6 ]
p b = [ 7, 8, 9 ]
p [1, 2, 3].my_zip(a, b) # => [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
p a.my_zip([1,2], [8])   # => [[4, 1, 8], [5, 2, nil], [6, nil, nil]]
p [1, 2].my_zip(a, b)    # => [[1, 4, 7], [2, 5, 8]]
p 
p c = [10, 11, 12]
p d = [13, 14, 15]
p [1, 2].my_zip(a, b, c, d)    # => [[1, 4, 7, 10, 13], [2, 5, 8, 11, 14]]
