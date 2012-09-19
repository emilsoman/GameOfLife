#Any live cell with fewer than two live neighbours dies, as if caused by under-population
#Any live cell with two or three live neighbours lives on to the next generation.
#Any live cell with more than three live neighbours dies, as if by overcrowding.
require_relative 'commandments/survival_commandment'

#Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.
require_relative 'commandments/revival_commandment'


class Testament

  def initialize
    @live_commandments = [ SurvivalCommandment.new  ]
    @dead_commandments = [ RevivalCommandment.new  ]
  end
  
  def send_worthy_cells_to_heaven(space, heaven)
    space.each_cell do |x,y|
      commandments = space.get_at(x,y).nil? ? @dead_commandments : @live_commandments

      is_cell_worthy_of_heaven = true
      commandments.each do |commandment|
        is_cell_worthy_of_heaven &&= commandment.go_to_heaven?(space.get_live_neighbor_count(x,y))
      end
      heaven.seed_life_at(x,y) if is_cell_worthy_of_heaven
    end
  end

end
