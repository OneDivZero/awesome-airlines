class Privado < Airplane
  def initialize(identifier)
    @model = 'Comfort'
    @capacity = 10
    @cargo_load = 2
    @cruising_range = 500

    super(identifier)
  end
end
