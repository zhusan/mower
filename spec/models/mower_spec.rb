require 'spec_helper'
require './models/lawn'
require './models/mower'


describe Mower do
  it "is valid with a direction" do
    mower = Mower.new(1, 2, "N")
    expect(mower).to be_valid
  end

  it "is valid with an invalid direction" do
    mower = Mower.new(1, 2, "A")
    expect(mower).not_to be_valid
  end

  it "move to a right direction" do
    mower = Mower.new(1, 2, "N")
    mower.set_direction_by_step('W')
    expect(mower.x).to eq 1
    expect(mower.y).to eq 3
    expect(mower.direction).to eq "N"
  end

  it "update direction only when step is L or R" do
    mower = Mower.new(1, 2, "N")
    mower.set_direction_by_step('L')
    expect(mower.x).to eq 1
    expect(mower.y).to eq 2
    expect(mower.direction).to eq "W"
  end

  it "is move out of lawn" do
    mower = Mower.new(0, 2, "W")
    expect(mower.move('M')).to eq  false
  end


end
