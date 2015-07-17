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
    mower.move('L')
    expect(mower.x).to eq 0
    expect(mower.y).to eq 2
    expect(mower.direction).to eq "W"
  end

end
