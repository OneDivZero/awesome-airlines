class PassengerLine < Airplane
  def initialize
    @model = 'A320'
    @capacity = 240
    @cargo_load = 15
    @cruising_range = 2000

    super
  end
end
