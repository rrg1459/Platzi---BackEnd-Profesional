class Ventilador
  attr_reader :marca, :velocidad
  def initialize(params)
    @marca = params[:marca]
    @velocidad = 0
  end
end

obj = Ventilador.new(marca: 'XYZ')
puts obj.marca
puts obj.velocidad


