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
end
