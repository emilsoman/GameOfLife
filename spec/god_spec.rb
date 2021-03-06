require 'spec_helper'
require_relative '../god'

describe God do

  it "should be able to create earth" do
    earth = God.create_earth
    earth.should be_an_instance_of(Universe)
  end

  it "should be able to create heaven" do
    heaven = God.create_heaven
    heaven.should be_an_instance_of(Universe)
  end

  it "should be able to create a Testament" do
    testament = God.create_testament
    testament.should be_an_instance_of(Testament)
  end


  context "when summons judegement day" do
    let(:earth) { God.create_earth }
    let(:heaven) { God.create_heaven }
    let(:testament) { God.create_testament  }

    it "should summon a universe for judgement day" do
      earth.should_receive(:summon_space_for_judgement).with(testament,heaven)
      God.summon_for_judgement(earth, testament, heaven)
    end
  
  end

  it "should be able to monitor life on a universe" do
    earth = Universe.new
    earth.should_receive(:to_s)
    God.monitor_universe(earth)
  end

end
