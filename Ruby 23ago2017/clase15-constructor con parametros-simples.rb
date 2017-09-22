class Ventilador
	def initialize(marca)
		@marca = marca
	end

	def marca
		@marca
	end

	def presentacion
		"La marca de este ventilador es #{@marca}"
	end

end


objeto_ventildor = Ventilador.new('abc')
puts objeto_ventildor.presentacion
puts objeto_ventildor.marca
