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
      @space.create_at(x, y)
    end
  end

  def seed_life_at(x,y)
    @space.create_at(x, y)
  end

  def wipe
    @space = Space.new
  end

  def summon_space_for_judgement(testament,heaven)
    testament.send_worthy_cells_to_heaven(@space,heaven)
  end

  def to_s
    @space.to_s 
  end

end
