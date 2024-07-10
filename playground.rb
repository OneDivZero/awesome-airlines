#-----------------------------------------------------------------------------------------------------------------------
# Playground class for dealing with our objects
#-----------------------------------------------------------------------------------------------------------------------

# require usefull 3rd-party-libs aka gems
require 'colorize'
require 'pry'
require 'pry-alias'

# require our custom project-classes
require_relative 'fleet'
require_relative 'airplane'
require_relative 'passenger_line'
require_relative 'jumbo_jet'
require_relative 'privado'

#-----------------------------------------------------------------------------------------------------------------------

class Playground
  COMPANY = 'Awesome Airlines' # just a constant

  # declare instance-variables with getter and setter methods out of the box (Ruby-Magic!)
  attr_accessor :fleet

  # make it a bit like 'static method main' in java
  def self.main(_args = []) # args is optional
    # make an instance of Playground (otherwise each method needs to be a class-method instead)
    # in Java you would put your code inside this method, but hey: this is ***Ruby***
    new
  end

  # constructor in Ruby
  def initialize(_args = [])
    heading
    setup_fleet
  end

  # setup a fleet using an array provided by :build_some_airplanes as return value
  # add one more airplane to the fleet using the method :add
  def setup_fleet
    @fleet = Fleet.new(build_some_airplanes)

    another_plane = PassengerLine.new

    @fleet.add(another_plane)
  end

  # build an array with airplanes of different types (implicit return in ruby!)
  # ... in Ruby you do not need to declare whether explicitly the array (syntactic sugar)
  # nor the object-type for an array (dynamic typing principle here)
  def build_some_airplanes
    [
      PassengerLine.new,
      PassengerLine.new,
      JumboJet.new,
      JumboJet.new,
      Privado.new,
      Privado.new
    ]
  end

  # show an awesome header
  private def heading
    spacer(:light_blue)
    puts slogan
    spacer(:light_blue)
  end

  # show company-name and a slogan
  private def slogan
    "#{COMPANY} ... *Fly better*"
  end

  # do 80 times printing '-' on console with the given color
  private def spacer(color = :white)
    puts ('-' * 80).colorize(color)
  end
end

# self-invocation of class Playground
Playground.main()
