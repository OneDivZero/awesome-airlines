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

  def show
    @airplanes.each do |airplane|
      airplane.state # :puts is done inside this method
      puts '-' * 20 # beautify output
    end
  end
end
