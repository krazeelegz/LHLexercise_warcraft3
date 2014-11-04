require_relative 'spec_helper'

#ENHANCEMENT 2
# Units start off alive but they die if their HP hits 0 or lower. This is usually 
# a result of receiving damage from combat.
# Implementation: Define a method dead? on the Unit class. We add it to Unit instead 
# of Footman for example b/c all units can die, not just footman or peasants.

describe Unit do

  before :each do
    @unit = Unit.new(0, 0)
  end

  describe "#dead?" do
   it "Should return True if Unit HP is less than Zero" do
      expect(@unit.dead?).to eq(true) 
    end
  end

end