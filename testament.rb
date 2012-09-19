class Testament
  
  def find_cells_passing_judgement(space)
    apply_first_commandment(space)
    apply_second_commandment(space)
    apply_third_commandment(space)
    apply_fourth_commandment(space)
  end

  #Any live cell with fewer than two live neighbours dies, as if caused by under-population
  def apply_first_commandment(space)
  end

  #Any live cell with two or three live neighbours lives on to the next generation.
  def apply_second_commandment(space)
  end

  #Any live cell with more than three live neighbours dies, as if by overcrowding.
  def apply_third_commandment(space)
  end

  #Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.
  def apply_fourth_commandment(space)
  end

end
