require_relative "bike"

class DockingStation

  def initialize
    @bikes = []
  end

  def release_bike
    fail "No bikes avaliable" if @bikes.empty?
   @bikes.pop
  end

  def dock(bike)
    fail "No room avaliable" if @bikes.length >= 20
    @bikes << bike
  end

  attr_reader :bikes


end

