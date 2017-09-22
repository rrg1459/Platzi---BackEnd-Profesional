new_array = []
File.open('poema.txt').readlines.each do |linea|
  new_array << linea.reverse
end

file = File.open('poema_reverse.txt', 'w')
new_array.reverse.each do |linea|
  file.puts linea
end
file.close