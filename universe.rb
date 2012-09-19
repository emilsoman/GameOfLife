require_relative 'space'

class Universe

  attr_accessor :space
  

  def initialize
    @space = Space.new
  end

  def seed_life(cordinate_list)
    cordinate_list.each do |cordinate|
      x = cordinate[0]
      y = cordinate[1]
      @space.create_at(x , y)
    end
  end

  def wipe
    @space = Space.new
  end

  def summon_space_for_judgement(testament)
    testament.find_cells_passing_judgement(@space)
  end

end
