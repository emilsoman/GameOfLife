require 'spec_helper'
require_relative '../testament'
require_relative '../universe'

describe Testament do

  context "when judgement day summoned" do
    it "should send worthy sells to heaven" do
      heaven = Universe.new
      space = Space.new

      space.create_at(0,0)
      space.create_at(0,1)
      space.create_at(1,0)
      space.create_at(2,0)
      space.create_at(3,0)
      space.stub(:get_live_neighbor_count)
      space.should_receive(:get_live_neighbor_count).with(0,0).and_return(2)
      space.should_receive(:get_live_neighbor_count).with(0,1).and_return(3)
      space.should_receive(:get_live_neighbor_count).with(1,0).and_return(1)
      space.should_receive(:get_live_neighbor_count).with(2,0).and_return(4)
      space.should_receive(:get_live_neighbor_count).with(2,1).and_return(3)

      heaven.stub(:seed_life_at)
      heaven.should_receive(:seed_life_at).with(0,0)
      heaven.should_receive(:seed_life_at).with(0,1)
      heaven.should_receive(:seed_life_at).with(2,1)
      heaven.should_not_receive(:seed_life_at).with(1,0)
      heaven.should_not_receive(:seed_life_at).with(2,0)
      heaven.should_not_receive(:seed_life_at).with(3,0)

      testament = Testament.new
      testament.send_worthy_cells_to_heaven(space,heaven)
    end
  end

  
end
