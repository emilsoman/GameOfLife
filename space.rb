require_relative 'cell'

class Space

  def initialize
    @grid = Hash.new
  end

  def create_at(x,y)
    @grid[x] = { y => Cell.new }
  end

  def get_at(x,y)
    @grid[x][y]
  rescue 
    return nil
  end

  def kill_at(x,y)
    @grid[x].delete(y)
    @grid.delete(x) if @grid[x].keys.none?
  rescue
  end
end
