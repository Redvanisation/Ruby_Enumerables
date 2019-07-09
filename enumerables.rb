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

  def my_select
    arr = []
    self.my_each do |i|
      arr << i if yield(i)
    end
    arr
  end

  def my_all?
    result = true
    self.my_each do |o|
      result = false unless yield o
      break
    end
    return result
  end

end



arr = [9,20,4,5,8]

# arr.my_each do |i|
#   puts i
# end

# puts "----"

# arr.my_each_with_index do |value, index|
#   puts "Index: #{index} Value: #{value}"
# end

# puts "----"

# arr.my_select do |i|
#   puts i < 9
# end

# puts "----"

arr.my_all? do |i|
  puts i > 20
end

