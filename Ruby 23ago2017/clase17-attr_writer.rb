class Ventilador
  attr_writer :marca
  def initialize(params)
    @marca = params[:marca]
  end

  def presentacion
    "La marca del Ventilador es #{@marca}"
  end
end

obj = Ventilador.new(marca: 'XYZ')
puts obj.presentacion
obj.marca = 'ABC'
puts obj.presentacion



