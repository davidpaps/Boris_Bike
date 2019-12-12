require_relative "bike"

class DockingStation

  attr_accessor :capacity
  attr_reader :bikes

  DEFAULT_CAPACITY = 20
  
  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    fail "No bikes avaliable" if empty?
   bikes.pop
  end

  def dock(bike)
    fail "No room avaliable" if full?
    bikes << bike
  end

  
  private
  
  def full?
    bikes.count >= capacity
  end

  def empty?
    bikes.empty?
  end

end

