# NOTE: This class must be abstract! Only subclass-instances are allowed, otherwise we raise the
# exception AbstractAirplaneInstanceNotAllowed ... Despite of that we allow super-calls from the
# descendants in order to avoid stupid code-duplication for some attributes acc. to initialization.
class Airplane
  class AbstractAirplaneInstanceNotAllowed < StandardError; end

  # declare instance-variables with getter and optional setter methods out of the box (Ruby-Magic!)
  # we restrict the accessibility according to writing them (setter-methods)
  attr_reader :model, :capacity, :cargo_load, :cruising_range
  attr_reader :identifier, :flight_readiness, :performed_maintenance_count
  attr_accessor :pilot, :co_pilot

  # Constructor in Ruby:
  # we are raising an exception here, cause we only want to allow instances from a concrete subclass!
  def initialize
    @flight_readiness = false

    if not_an_airplane_descendant?
      puts 'Hey: use a subclass of Airplane!'.colorize(:red)
      raise AbstractAirplaneInstanceNotAllowed
    end
  end

  # override :to_s provided by class Object
  def to_s
    "#{self.class.name} #{@model} | ID: #{identifier} | capacity: #{@capacity} | cargo_load: #{@cargo_load} | cruising_range: #{@cruising_range}"
  end

  def state
    puts self.to_s.colorize(:blue) # normally implicit call of :to_s, but :colorize needs it explicitly
    puts "readiness: #{flight_readiness} | maintenance: #{performed_maintenance_count}".colorize(:yellow)
  end

  # evaluate if the current instance is not the base-class of any airplane-instance
  private def not_an_airplane_descendant?
     not self.class.superclass.eql?(Airplane) # 'not' is the same as '!' in Java, both works ;-)
  end
end
