class Ventilador
  attr_accessor :marca
  def initialize(params)
    @marca = params[:marca]
  end

  def presentacion
    "La marca del Ventilador es #{@marca}"
  end
end

obj = Ventilador.new(marca: 'XYZ')
puts obj.marca
obj.marca = 'ABC'
puts obj.marca


