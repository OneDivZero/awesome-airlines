class PassengerLine < Airplane
  def initialize(identifier)
    @model = 'A320'
    @capacity = 240
    @cargo_load = 15
    @cruising_range = 2000

    super(identifier)
  end
end
