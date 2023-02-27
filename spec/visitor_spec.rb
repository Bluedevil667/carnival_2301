require 'spec_helper'
RSpec.describe Visitor do
  
  it 'exists' do
    visitor1 = Visitor.new("Bruce", 54, 10)
    expect(visitor1).to be_a Visitor
  end

  it 'has atributes' do
    visitor1 = Visitor.new("Bruce", 54, 10)
    expect(visitor1.name).to eq("Bruce")
    expect(visitor1.height).to eq(54)
    expect(visitor1.spending_money).to eq(10)
    expect(visitor1.preferences).to eq([])
  end

  it 'can add a preference' do
    visitor1 = Visitor.new("Bruce", 54, 10)
    expect(visitor1.add_preference(:gentle)).to eq(:gentle)
  end

  it 'can add and store muliple preferences' do
    visitor1 = Visitor.new("Bruce", 54, 10)
    visitor1.add_preference(:gentle)
    visitor1.add_preference(:water)
    expect(visitor1.preferences).to eq([:gentle, :water])
  end
end