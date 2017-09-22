class Ventilador
	def initialize
		@marca = 'ABC' 
	end

	def marca
		@marca
	end

	def presentacion
		"La marca de este ventilador es #{@marca}"
	end

end


objeto_ventildor = Ventilador.new
puts objeto_ventildor.presentacion
puts objeto_ventildor.marca
