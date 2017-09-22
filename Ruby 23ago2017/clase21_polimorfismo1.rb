
#require './pato'
require './clase19_pato'

class PatitoGoma < Pato
  def hacer_quak
    puts 'Squeeck'
  end

  def volar
    puts 'No puedo volar'
  end
end

class PatitoMadera < Pato
  def hacer_quak
    puts 'No hace ningún sonido'
  end

  def volar
    puts 'No puede volar'
  end
end

patito_goma = PatitoGoma.new
patito_goma.hacer_quak
patito_goma.volar

patito_madera = PatitoMadera.new
patito_madera.hacer_quak
patito_madera.volar

