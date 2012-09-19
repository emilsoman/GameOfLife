require_relative 'commandments/survival_commandment'

#Any live cell with fewer than two live neighbours dies, as if caused by under-population

#Any live cell with two or three live neighbours lives on to the next generation.

#Any live cell with more than three live neighbours dies, as if by overcrowding.

#Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.

class Testament

  def initialize
    @commandments = [ SurvivalCommandment.new  ]
  end
  
  def find_cells_passing_judgement(space)
  end


end
