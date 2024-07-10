class Airplane
  attr_accessor :model, :capacity, :cargo_load, :cruising_range

  def initialize
    raise 'Instance not allowed. Use a subclass of Airplane!'
  end

  def to_s
    "#{self.class.name} #{@model} | capacity: #{@capacity} | cargo_load: #{@cargo_load} | cruising_range: #{@cruising_range}"
  end
end
