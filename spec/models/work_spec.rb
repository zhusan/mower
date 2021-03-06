require 'spec_helper'
require './models/work'


describe Work do

  it 'is a normal work' do
    work = Work.new
    work.set_lawn('5 5')
    work.set_mower('1 2 N')
    expect(work.mow('LMLMLMLMM')).to eq '1 3 N'
  end

  it 'is move out of lawn' do
    work = Work.new
    work.set_lawn('5 5')
    work.set_mower('1 2 N')
    expect(work.mow('LMMM')).to eq '割草路径超出超出范围'
  end

end
