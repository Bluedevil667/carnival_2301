class Carnival
  attr_reader :duration,
              :rides
  def initialize(duration)
    @duration = duration
    @rides = []
  end

  def add_ride(ride)
    @rides << ride
  end

  def most_popular_ride
    most_pop_ride = @rides.max_by { |ride| ride.rider_log.count }
    most_pop_ride.name
  end
  
  def most_profitable_ride
    most_prof_ride = @rides.max_by(&:total_revenue)
    most_prof_ride.name
  end  

  def total_revenue
    revenue = []
    @rides.each do |ride|
      revenue << ride.total_revenue
    end
    revenue.sum
  end
end
