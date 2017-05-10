# test driven development exercises
class Array
  def my_uniq
    result = []
    self.each do |num|
      result << num unless result.include?(num)
    end
    result
  end

  def two_sum
    result = []
    self.each_with_index do |num1, idx1|
      self.each_with_index do |num2, idx2|
        next if idx1 >= idx2
        result << [idx1, idx2] if num1 + num2 == 0
      end
    end

    result
  end

  def my_transpose
    result = []
    self[0].each_index do |idx|
      temp = []
      self.each do |arr|
        temp << arr[idx]
      end
      result << temp
    end
    result
  end

  def stock_picker
    result = [0, 0]
    self.each_with_index do |num1, idx1|
      self.each_with_index do |num2, idx2|
        next if idx1 >= idx2
        if self[result[1]] - self[result[0]] < num2 - num1
          result = [idx1, idx2]
        end
      end
    end

    result
  end

end
