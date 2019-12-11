require_relative "bike"

class DockingStation

  def release_bike
    fail "No bikes avaliable" unless @bike
   @bike
  end

  def dock(bike)
    @bike = bike
  end

  attr_reader :bike
  # def bike
  #   @bike
  # end

end

