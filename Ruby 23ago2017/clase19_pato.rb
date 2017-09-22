class Pato
  def hacer_quak
    puts 'Quack'
  end

  def nadar
    puts 'Estoy nadando'
  end

  def presentacion
    puts 'Soy un pato'
  end

  def volar
    puts 'Estoy volando'
  end
end

class PatoMallard < Pato
  def presentacion
    super
    puts 'Soy de tipo mallard'
  end
end

class PatoBlanco < Pato
  def presentacion
    super
    puts 'Soy de tipo blanco'
  end
end

pato = Pato.new
pato_mallard = PatoMallard.new
pato_blanco = PatoBlanco.new
pato.presentacion
pato_mallard.presentacion
pato_blanco.presentacion
pato_blanco.volar
