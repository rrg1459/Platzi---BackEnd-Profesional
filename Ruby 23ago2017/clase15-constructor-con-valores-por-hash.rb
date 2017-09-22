class Ventilador
	def initialize(params)
		@marca     = params[:marca]
		@velocidad = params[:velocidad]
	end

	def presentacion
		"La marca es #{@marca} y la velocidad maxima es #{@velocidad}"
	end

end


ventilador = Ventilador.new(marca: 'X', velocidad: 3)
puts ventilador.presentacion
