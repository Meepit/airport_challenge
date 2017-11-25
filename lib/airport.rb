class Airport
  attr_reader :planes
  def initialize
    @planes = []
  end

  def depart(plane)
    raise "Plane not found at this Airport" unless find_plane(plane)
    plane.takeoff
    remove_plane(plane)
  end

  def receive(plane)
    @planes << plane
  end

  def remove_plane(plane)
    planes.delete(plane)
    raise "Plane has not departed" if find_plane(plane)
  end

  def find_plane(plane)
    planes.include? plane
  end
end
