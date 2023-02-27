require 'spec_helper'
RSpec.describe Carnival do
  let(:visitor1) {Visitor.new('Bruce', 54, 10)}
  let(:visitor2) {Visitor.new('Tucker', 36, 5)}
  let(:visitor3) {Visitor.new('Penny', 64, 15)}
  let(:ride1) {Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })}
  let(:ride2) {Ride.new({ name: 'Ferris Wheel', min_height: 36, admission_fee: 5, excitement: :gentle })}
  let(:ride3) {Ride.new({ name: 'Roller Coaster', min_height: 54, admission_fee: 2, excitement: :thrilling })}
  it 'exists' do
    carnival = Carnival.new(100)
  end

  it 'has a duration' do
    carnival = Carnival.new(100)
    expect(carnival.duration).to eq(100)
  end

  it 'has rides array' do
    carnival = Carnival.new(100)
    expect(carnival.rides).to eq([])
  end

  it 'can add rides' do
    carnival = Carnival.new(100)
    carnival.add_ride(ride1)
    carnival.add_ride(ride2)
    carnival.add_ride(ride3)
    expect(carnival.rides).to eq([ride1, ride2, ride3])
  end

  it 'can return most popular ride' do
    carnival = Carnival.new(100)
    visitor1.add_preference(:gentle)
    visitor2.add_preference(:gentle)
    visitor2.add_preference(:thrilling)
    visitor3.add_preference(:thrilling)
    carnival.add_ride(ride1)
    carnival.add_ride(ride2)
    carnival.add_ride(ride3)
    ride1.board_rider(visitor1)
    ride1.board_rider(visitor2)
    ride1.board_rider(visitor1)
    ride3.board_rider(visitor1)
    ride3.board_rider(visitor2)
    ride3.board_rider(visitor3)
    expect(carnival.most_popular_ride).to eq("Carousel")
  end
end