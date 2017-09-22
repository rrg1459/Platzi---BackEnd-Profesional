class Mamifero
  def respirar
    puts 'está respirando'
  end
end

class Perro < Mamifero
  def ladrar
    puts 'está ladrando'
  end
end

mamifero = Mamifero.new
perro = Perro.new

mamifero.respirar
perro.respirar
perro.ladrar
mamifero.ladrar

