class Fleet
  attr_accessor :airplanes

  def initialize(airplanes = [])
    @airplanes = airplanes
  end

  def add(airplane)
    @airplanes << airplane
  end

  def retire(airplane)
    @airplanes.delete(airplane)
  end
end
