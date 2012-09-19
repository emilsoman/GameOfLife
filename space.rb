require_relative 'cell'

class Space

  def initialize
    @grid = Hash.new
  end

  def create_at(x,y)
    if @grid[x].nil?
      @grid[x] = { y => Cell.new }
    else
      @grid[x].merge!({ y => Cell.new })
    end
  end

  def get_at(x,y)
    return @grid[x][y]
  rescue 
    return nil
  end

  def kill_at(x,y)
    @grid[x].delete(y)
    @grid.delete(x) if @grid[x].keys.none?
  rescue
  end

  def each_cell
    grid_border_start_x = @grid.keys.min
    grid_border_end_x = @grid.keys.max
    grid_border_start_y = @grid[grid_border_start_x].keys.min - 1
    grid_border_end_y = @grid[grid_border_end_x].keys.max + 1
    grid_border_start_x -= 1
    grid_border_end_x += 1

    (grid_border_start_x..grid_border_end_x).each do |x|
      (grid_border_start_y..grid_border_end_y).each do |y|
        yield(x,y)
      end
    end
  end

  def to_s
    grid_border_end_x = @grid.keys.max
    grid_border_end_y = @grid[grid_border_end_x].keys.max + 1
    grid_border_end_x += 1

    string = ""
    (-1..grid_border_end_x).each do |x|
      (-1..grid_border_end_y).each do |y|
        string << ( (self.get_at(x,y) == nil) ? '  ' : ' 0' )
      end
      string << "\n"
    end
    return string
  end

  def get_live_neighbor_count(x,y)
    neighbors = [self.get_at(x-1,y-1), 
      self.get_at(x-1,y), 
      self.get_at(x-1,y+1), 
      self.get_at(x,y+1), 
      self.get_at(x,y-1),
      self.get_at(x+1,y+1),
      self.get_at(x+1,y),
      self.get_at(x+1,y-1)
    ]
    count = 0
    neighbors.each do |neighbor|
      count += 1 if !neighbor.nil?
    end
    return count
  end

end
