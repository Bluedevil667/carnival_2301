class Ride
  attr_reader :name,
              :min_height,
              :admission_fee,
              :excitement,
              :total_revenue
  def initialize(attributes)
    @name = attributes[:name]
    @min_height = attributes[:min_height]
    @admission_fee = attributes[:admission_fee]
    @excitement = attributes[:excitement]
    @total_revenue = 0
    @rider_log = []
  end

  def board_rider(rider)
    if rider.preferences.include?(excitement)
      @total_revenue += @admission_fee
      # require 'pry'; binding.pry
      rider.spending_money = rider.spending_money - @admission_fee
      @rider_log << rider
    end
  end
end
