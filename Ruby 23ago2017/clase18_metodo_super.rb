class Persona
	attr_accessor :nombre

	def initialize(nombre)
		@nombre = nombre
	end

	def dormir(n)
		puts "Duerme #{n} horas"
	end
end

class Empleado < Persona
	def initialize
		super('Juan')
	end

	def dormir
		super(8)
	end
end

persona  = Persona.new('Jose')
empleado = Empleado.new


puts persona.nombre
puts empleado.nombre
persona.dormir(4)
empleado.dormir

