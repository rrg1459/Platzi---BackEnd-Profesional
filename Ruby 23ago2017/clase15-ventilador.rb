class Ventilador
	def marca=(marca)
		@marca = marca
	end

	def presentacion
		"La marca de este ventilador es #{@marca}"
	end

end


objeto_ventildor = Ventilador.new
objeto_ventildor.marca = 'xyz'
puts objeto_ventildor.presentacion
