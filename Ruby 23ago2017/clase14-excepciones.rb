def porcentaje (a, b)
	raise TypeError, 'El primer argumento no es un numero' if !a.is_a? Numeric
	raise TypeError, 'El segundo argumento no es un numero' if !b.is_a? Numeric
	(a * 100.0) / b
end

puts porcentaje(10, '100')