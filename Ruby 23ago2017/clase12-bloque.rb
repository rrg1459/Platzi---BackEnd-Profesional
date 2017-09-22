def ejecutar1(&bloque)
	if block_given?
	  bloque.call
    else  
      puts 'no tiene un bloque1'
    end
end

def ejecutar2
	if block_given?
	  yield
    else  
      puts 'no tiene un bloque2'
    end
end


ejecutar1 { puts 'hola1!'}
ejecutar1

ejecutar2 { puts 'hola2!'}
ejecutar2