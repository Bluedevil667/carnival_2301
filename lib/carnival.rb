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
    most_pop_ride = most_pop_ride
    rider_count = 0
    @rides.each do |ride|
      if ride.rider_log.count > rider_count
        rider_count = ride.rider_log.count
        most_pop_ride = ride
      end
    end
    most_pop_ride.name
  end

  def most_profitable_ride
    most_prof_ride = most_prof_ride
    rider_count = 0
    @rides.each do |ride|
      if ride.total_revenue > rider_count
        rider_count = ride.total_revenue
        most_prof_ride = ride
      end
    end
    most_prof_ride.name
  end
end
