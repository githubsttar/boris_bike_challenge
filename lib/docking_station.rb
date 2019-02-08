require_relative 'bike'
class DockingStation
  attr_reader :bike

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' unless @bikes
    @bikes
  end

  def dock(bike)
    fail 'Docking station is full' if @bikes.count >= 20
    @bikes << bike
  end
end
