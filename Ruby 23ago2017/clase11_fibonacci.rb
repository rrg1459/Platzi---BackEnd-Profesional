def crear_serie(n)
  array = [1, 2]
  (n - 2).times do
    array << array[-1] + array[-2]
  end
  array
end

def arreglo_impares(array)
  new_array = []
  array.each do |elemento|
    new_array << elemento if elemeno.odd?
  end
  new_array
end

def suma_arreglo(array)
  suma = 0
  array.each do |element|
    suma += element
  end
  suma
end

fibonacci = crear_serie(40)
impares = arreglo_impares(fibonacci)
resultado = suma_arreglo(impares)
# puts impares

puts resultado
