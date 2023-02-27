class Visitor
  attr_reader :name,
              :height,
              :preferences
  attr_accessor :spending_money
  def initialize(name, height, spending_money)
    @name = name
    @height = height
    @spending_money = spending_money
    @preferences = []
  end

  def add_preference(preference)
    @preferences << preference
    preference
  end

  def tall_enough?(height)
    if @height >= height
      true
    else
      false
    end
  end
end
