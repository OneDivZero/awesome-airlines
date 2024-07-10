class Airplane
  attr_accessor :model, :capacity, :cargo_load, :cruising_range

  def initialize
    raise 'Instance not allowed. Use a subclass of Airplane!'
  end
end
