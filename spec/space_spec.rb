require 'spec_helper'
require_relative '../space'

describe Space do
  let(:space) { Space.new }
  it "should be able to create and get a cell at a cordinate" do
    space.create_at(5,6)
    space.get_at(5,6).should be_an_instance_of(Cell)
  end
  it "should get nil for a non existent cordinate" do
    space.get_at(10,11).should be_nil
  end
  it "should be able to kill a cell at a cordinate" do
    space.create_at(5,6)
    space.get_at(5,6).should_not be_nil
    space.kill_at(5,6)
    space.get_at(5,6).should be_nil
  end
  it "should be able to get the number of live neighbors" do
    space.create_at(0,0)
    space.create_at(0,1)
    space.create_at(0,2)
    space.create_at(1,0)
    space.create_at(1,1)
    space.create_at(1,2)
    space.create_at(2,0)
    space.create_at(2,1)
    space.create_at(2,2)
    space.get_live_neighbor_count(0,0).should == 3
    space.get_live_neighbor_count(0,1).should == 5
    space.get_live_neighbor_count(0,2).should == 3
    space.get_live_neighbor_count(1,0).should == 5
    space.get_live_neighbor_count(1,1).should == 8
    space.get_live_neighbor_count(1,2).should == 5
    space.get_live_neighbor_count(2,0).should == 3
    space.get_live_neighbor_count(2,1).should == 5
    space.get_live_neighbor_count(2,2).should == 3
  end
end
