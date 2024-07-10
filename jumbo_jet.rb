class JumboJet < Airplane
  def initialize
    @model = 'A380'
    @capacity = 400
    @cargo_load = 35
    @cruising_range = 6000

    super
  end
end
