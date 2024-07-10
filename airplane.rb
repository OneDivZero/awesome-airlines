class Airplane
  # declare instance-variables with getter and setter methods out of the box (Ruby-Magic!)
  attr_accessor :model, :capacity, :cargo_load, :cruising_range

  # constructor in Ruby
  # we are raising an exception here, cause we only want to allow instances from a concrete subclass!
  def initialize
    raise 'Instance not allowed. Use a subclass of Airplane!'
  end

  # override :to_s provided by class Object
  def to_s
    "#{self.class.name} #{@model} | capacity: #{@capacity} | cargo_load: #{@cargo_load} | cruising_range: #{@cruising_range}"
  end
end
