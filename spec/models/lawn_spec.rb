require 'spec_helper'
require './models/lawn'
require './models/mower'


describe Lawn do
  it "is valid with a direction" do
    mower = Lawn.new(1, 2)
    expect(mower).to be_valid
  end

  it "is valid with an invalid direction" do
    mower = Lawn.new(1, 0)
    expect(mower).not_to be_valid
  end


end
