class Airplane
  # declare instance-variables with getter and optional setter methods out of the box (Ruby-Magic!)
  attr_reader :model, :capacity, :cargo_load, :cruising_range
  attr_reader :identifier, :flight_readiness, :performed_maintenance_count
  attr_accessor :pilot, :co_pilot

  # constructor in Ruby
  # we are raising an exception here, cause we only want to allow instances from a concrete subclass!
  def initialize
    @flight_readiness = false
    @performed_maintenance_count = nil

    raise 'Instance not allowed. Use a subclass of Airplane!'
  end

  # override :to_s provided by class Object
  def to_s
    "#{self.class.name} #{@model} | capacity: #{@capacity} | cargo_load: #{@cargo_load} | cruising_range: #{@cruising_range}"
  end
end
