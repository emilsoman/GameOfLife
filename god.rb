require_relative 'universe'
require_relative 'testament'

class God

  def self.create_earth
    return Universe.new
  end

  def self.create_heaven
    return Universe.new
  end

  def self.create_testament
    return Testament.new
  end

  def self.summon_for_judgement(universe,testament)
    heaven_going_cells = universe.summon_space_for_judgement(testament)
    return heaven_going_cells
  end

  
end
