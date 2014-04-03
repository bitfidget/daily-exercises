class Cell
  attr_accessor :alive, :neighbours

  def self.dead
    Cell.new(false)
  end

  def self.alive
    Cell.new(true)
  end

  def initialize(alive)
    @alive = alive
  end

  alias_method :alive?, :alive

  def next_state
    alive_count = neighbours.count { |n| n.alive? }
    if alive
      case alive_count
      when 0..1
        false
      when 2..3
        true
      else
        false
      end
    else
      if alive_count == 3
        return true
      end
    end
  end

  def print_cell
    if alive?
      print "X"
    else
      print " "
    end

  end


end