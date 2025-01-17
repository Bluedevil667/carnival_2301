class Ride
  attr_reader :name,
              :min_height,
              :admission_fee,
              :excitement,
              :total_revenue,
              :rider_log
  def initialize(attributes)
    @name = attributes[:name]
    @min_height = attributes[:min_height]
    @admission_fee = attributes[:admission_fee]
    @excitement = attributes[:excitement]
    @total_revenue = 0
    @rider_log = []
  end

  def board_rider(rider)
    if rider.preferences.first == @excitement && rider.tall_enough?(@min_height) == true
      @total_revenue += @admission_fee
      rider.spending_money = rider.spending_money - @admission_fee
      @rider_log << rider
    end
  end
end
