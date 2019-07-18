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
    arr = []

    while i < self.size
      arr << yield(self[i], i)
      i += 1
      break if i > self.length-1
    end
    arr
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
    result
  end

  def my_none?
    result = false
    self.my_each do |o|
      result = true unless yield o
      break
    end
    result
  end

  def my_count
    result = true
    self.my_each do |i|
      result = false if !(yield i)
    end
    result
  end

  def my_map proc = nil
    arr = []
    if proc
      self.my_each do |i|
        arr << proc.call(i)
      end
    else
      self.my_each do |i|
        arr << yield(i)
      end
    end
    arr
  end

  def my_inject args = nil
    if !block_given? 
      return nil
    end

    unless !args.nil?
      result = self[0]
      o = 1
    else
      result = args
      o = 0
    end

    self[o..-1].my_each do |i|
      result = yield(result, i)
    end
    result
  end

end

def multiply_els args
  args.my_inject do |a, b|
    a * b
  end
end



# arr = [9,20,4,5,8]

# puts "---- MY EACH -----"

# arr.my_each do |i|
#   puts i
# end

# puts "---- MY EACH WITH INDEX ----"

# arr.my_each_with_index do |value, index|
#   puts "Index: #{index} Value: #{value}"
#   index
# end

# puts "---- MY SELECT ----"

# arr.my_select do |i|
#   puts i < 9
# end

# puts "---- MY ALL ----"

# arr.my_all? do |i|
#   puts i > 20
# end

# puts "---- MY NONE ----"

# arr.my_none? do |i|
#   puts i != 20
# end

# puts "---- MY COUNT ----"

# arr.my_count do |i|
#   puts i % 2 == 0
# end

# puts "---- MY MAP ----"

# arr.my_map do |i|
#   puts i * 2
# end

# puts "---- MULTIPLY ELS TO TEST MY EJECT ----"

# p multiply_els([2,4,5])
