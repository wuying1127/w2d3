# require "byebug"

class TowersOfHanoi
  attr_reader :towers

  def initialize
    @towers = [[3, 2, 1], [], []]
  end

  def move(start_pos, end_pos)
    if valid_move?(start_pos, end_pos)
      towers[end_pos] << towers[start_pos].pop
    end
  end

  def valid_move?(start_pos, end_pos)
    return false if towers[start_pos].empty?
    if towers[end_pos].last.is_a?(Fixnum)
      return false if towers[end_pos].last < towers[start_pos].last
    end
    true
  end

  def won?(towers)
    return true if towers[2].count == 3
    false
  end

end
