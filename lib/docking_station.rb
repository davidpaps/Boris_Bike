require_relative "bike"

class DockingStation

  attr_reader :bikes
  DEFAULT_CAPACITY = 20
  
  def initialize
    @bikes = []
  end

  def release_bike
    fail "No bikes avaliable" if empty?
   @bikes.pop
  end

  def dock(bike)
    fail "No room avaliable" if full?
    @bikes << bike
  end

  private

  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end

end

