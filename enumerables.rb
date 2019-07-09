module Enumerable
  def my_each
    # your code here
      i = 0
      while i < self.size
        yield(self[i])
        i += 1
      end
      self
  end

  def my_each_with_index
    i = 0

    while i < self.size
      yield(self[i], i)
      i += 1
    end
  end
end



arr = [9,20,4,5,8]

arr.my_each do |i|
  puts i
end

puts "----"

arr.my_each_with_index do |value, index|
  puts "Index: #{index} Value: #{value}"
end

# arr.each do |o|
    
# end
