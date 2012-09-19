require 'spec_helper'
require_relative "../universe"

describe Universe do
  let(:earth) { Universe.new  }
  context "when created" do
    it "should create a space" do
      earth.space.should be_an_instance_of(Space)
    end
  end
  context "when seeded" do
    it "should create life in space" do
      earth.seed_life([[1,1],[2,2]])
      earth.space.get_at(1,1).should_not be_nil
      earth.space.get_at(2,2).should_not be_nil
    end
  end
  context "when wiped" do
    it "should clear the space" do
      earth.seed_life([[1,1],[2,2]])
      earth.wipe
      earth.space.get_at(1,1).should be_nil
      earth.space.get_at(2,2).should be_nil
    end
  end

  context "when summoned for judgement" do
    it "should find all cells worthy of going to heaven" do
      testament = double('Testament')
      heaven = double('Heaven')
      testament.should_receive(:send_worthy_cells_to_heaven).with(earth.space,heaven)
      earth.summon_space_for_judgement(testament,heaven)
    end
  end

end
