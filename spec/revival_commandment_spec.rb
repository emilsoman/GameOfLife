require 'spec_helper'
require_relative '../commandments/revival_commandment'

describe RevivalCommandment do

  let(:revival_commandment) { RevivalCommandment.new }

  describe "#go_to_heaven?" do
    context "when there are two neighbours" do
      it "should return false" do
        revival_commandment.go_to_heaven?(2).should be_false
      end
    end
    context "when there are three neighbours" do
      it "should return true" do
        revival_commandment.go_to_heaven?(3).should be_true
      end
    end
    context "when there is one neighbour" do
      it "should return true" do
        revival_commandment.go_to_heaven?(1).should be_false
      end
    end
    context "when there are 4 neighbour" do
      it "should return true" do
        revival_commandment.go_to_heaven?(4).should be_false
      end
    end
  end
  
end
