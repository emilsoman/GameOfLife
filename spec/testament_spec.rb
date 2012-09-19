require 'spec_helper'
require_relative '../testament'

describe Testament do

  describe "find_cells_passing_judgement" do
    testament = Testament.new
    space = Space.new
    heaven_going_cells = testament.find_cells_passing_judgement(space)
  end

  
end
