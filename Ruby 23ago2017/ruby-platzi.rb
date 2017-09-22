===============================================================
clase 9 Argumentos y valores de retorno 13:10 min

Metodo con argumentos 

def saludar (*arg)
  puts "Hola #{arg[0]}"
  puts "como estas #{arg[1]}"
  puts "Adios #{arg[2]}"
end

saludar 'Carla', 'Maria', 'Juan'

------------------------------------------

Metodo con argumento con valor por defecto

def saludo nombre="humano"
  puts "Hola #{nombre}!"
end

saludo # => Hola humano!
saludo "jose" # => HOla jose!

------------------------------------------

pasar un hash como argumento de nuestro metodo
un hash es como un diccionario, es como una array, el indice no va a ser un numero sino una clave que puede ser una cadena

def saludar (params)
  puts "Tu numbre es #{params[:nombre]}"
  puts "Tu apeelido es #{params[:apellido]}"

saludar({'nombre': 'Rafa', 'apellido': 'rodriguez'})

------------------------------------------

Valores de retorno

def suma (a, b)
  a + b
end

def imprime_suma (a, b)
  puts a+ b
end

resultado = suma (1, 2)
puts "El resultado es #{resultado}" # => El resultado es 3

resultado = imprime_suma (1, 2)
puts "El resultado es #{resultado}" # => El resultado es nil

===============================================================
clase 10 Metodos de arreglos, hashes 20:14 min

Lista de métodos de arreglos en Ruby:

include                                      : Busca dentro del arreglo si existe o no el elemento que le preguntemos.
map (map!)                                   : Funciona como each, pero adicional se puede editar o sobre escribir el valor de nuestro arreglo. Para que los cambios en el arreglo permanezcan, escribimos un signo de exclamación después del método.
map &:(even?)                                 : Even funciona en Ruby para indicarnos si el número es par o es impar. Al utilizarlo en el método map, nos va a ayudar a saber el estado de cada uno de los elementos que componen el arreglo.
reduce
select                                       : Realiza una consulta entre cada uno de los elementos del arreglo y selecciona según la indicación que le demos.
reject                                       : Rechaza a todos los elementos del arreglo según la indicación que le demos.
drop_while                                   : Funciona como el método reject.
delete_if                                    : Este método también funciona similar al reject.
keep_if                                      : Funciona similar al método select.
any?                                         : Nos ayuda a saber si alguno de los elementos del arreglo cumple con la condición que le establezcamos.
all?                                         : Nos ayuda a saber si todos los elementos del arreglo cumplen con la condición que le establezcamos.
& (intersección)                             : Nos ayuda a crear una intersección diciéndonos qué elementos tenemos en común entre diferentes arreglos.
asterisco (*) (por un entero y por un string): Nos ayuda a multiplicar los elementos del arreglo por el valor que le indiquemos.
suma y resta
collect                                      : Es un alias del método map
each_with_index                              : Nos va a devolver primero el valor y luego el index que estemos llamando.
flatten!                                     : Nos permite tener un arreglo simple.

Nota: Si colocamos un signo de interrogación después de un método le estamos indicando que queremos que nos devuelva un boleado, pero si colocamos signo de admiración significa que está alterando el valor de la variable que le estemos pasando.
Los hashes son diccionarios que podemos utilizar en Ruby.
Kattya Daniella Cuevas Montes

a = [1,2,3,4,5,6]

a.include?  3 # => true
a.include? 13 # => false

a.map { |i| i + 2} # => [3,4,5,6,7,8]
a #=> [1,2,3,4,5,6]

a.map! { |i| i + 2} # => [3,4,5,6,7,8]
a #=> [3,4,5,6,7,8]


4.even? # => true

a.map &(:even?) #=> [false, true, false, true, false, true]

------

a #=> [3,4,5,6,7,8]

a.reduce(:+) #=> 33


a.reduce(100, :+) #=> 133

#el numero mas grande que tengo en el array
a.reduce do |first, second|
         if first > second
           first
          else
           second
          end
  end

# => 8
--------

a #=> [3,4,5,6,7,8]

a.select { |i| i < 6} #=> [3,4,5]

a.reject { |i| i < 6} #=> [6,7,8]

----------

a.drop_while { |i| i < 6} #=> [6,7,8]

--------

a #=> [3,4,5,6,7,8]


a.any?  { |i| i % 7 == 0 } #=> true

a.all?  { |i| i % 7 == 0 } #=> false

----------

a = [3,4,5,6,7,8]
b = [6,7,8,9,10]

a & b #=> [6,7,8]

a * 2 #=> [3,4,5,6,7,8,3,4,5,6,7,8]

a * 'we' #=> [3we4we5we6we7we8]


----------

a = [3,4,5,6,7,8]

a.collect { |i| | i  * i} #=> [9, 16, 25, 36, 49, 64]

a.each (trae todos lmetodos disponibles para el metodo each)
por ejemplo metodo a.each_with_index {|val, idx| puts val, idx, val} 

-----------

a = [1,2,3,[4,[5,6]]]

a.flatten #=> [1,2,3,4,5,6]

-----------

hash = {'nombre': 'rafa'} #=> {:nombre=>"rafa"}

hash = {nombre: 'rafa'} #=> {:nombre=>"rafa"}

hash = {:nombre => 'rafa'} #=> {:nombre=>"rafa"} ### se uso hasta ruby 1.8, desde la1.9 esta obsoleto

-----------

hash = {nombre: 'rafa'} #=> {:nombre=>"rafa"}

bhash = {apellido: 'rodriguez'} #=> {:apellido=>"rodriguez"}

hash.merge)bhash) #=> {:nombre=>"rafa", :apellido=>"rodriguez"}

hash.merge)bhash).to_a #=> [[:nombre, "rafa"]. [:apellido, "rodriguez"]]
los indices son nombre y apellido y los valores son rafa y rodriguez

===============================================================
clase 11 Fibonacci con Ruby 9:05 min

fibonacci.#!/usr/bin/env ruby -wKU

===============================================================
clase 12 Blocks, procs y lambdas 8:01 min

Algunas características de los bloques en Ruby:
  * También llamados funciones sin nombre.
  * Van entre llaves {} o entre do…end.
  * Depende de un método asociado para funcionar.

Algunas características de Yield:
  * Ejecuta un bloque pasado como parámetro.
  * Es un patrón frecuente en Ruby.

Algunas características de los procs y lambdas:
  * Son métodos sin nombre.
  * Se pueden asignar a una variable.
  * Se tienen qué llamar (.call) para que se puedan ejecutar.
  * Lambdas es un método que está heredando todos los métodos que tiene procs.
  
  los procs y los lambdas se conocen como funciones anonimas o metodos anonimos
  los metodos no son solo varibales

===============================================================
clase 13 Lectura de archivos 10:21 min

===============================================================
clase 14 Manejo de excepciones 18:07 min

El manejo de excepciones nos sirve para controlar los errores que Ruby nos arroja por defecto cuando ejecutamos un código.
Existen cierto tipo de palabras reservadas para este manejo de excepciones:

  * begin, end: Para definir un bloque.
  * rescue: Para controlar una excepción.
  * else: Código que se ejecuta si no hubo excepciones.
  * ensure: Para forzar que se ejecute código si se lanza o no una excepción.
  * raise o fail: Para lanzar una excepción.

===============================================================
clase 15 Manejo Objetos y clases en Ruby 13:22 min

Objetos en Ruby:
  * Ruby es un lenguaje orientado a objetos.
  * Casi todo en Ruby es un objeto.
  * Los objetos tienen datos (atributos)y comportamiento (métodos).
  * Los objetos colaboran con otros objetos.

La clases son las definiciones de los objetos, estas son algunas características:
  * Contenedor que tiene propiedades tales como métodos y variables.
  * Pueden heredar propiedades.
  * Permite herencia simple.

===============================================================
clase 16 Scope de variables 14:29 min

Características de las variables locales:
  . Se usan a nivel de los métodos o bloques. Esto quiere decir que su tiempo de vida es solo dentro de un método o solo dentro de un bloque.
  . Deberían comenzar con minúscula o con _.
  . Siempre vamos a saber exactamente hasta dónde vive una variable local.

Características de las variables de instancia:
  . Solo va a tener un valor dentro de un objeto, es decir que su tiempo de vida es solo dentro de un objeto.
  . Solo cobra vida cuando vamos a iniciar una clase.
  . Todas las variables de instancia inician con un solo @

Características de las variables de clase:
  . Inician con dos @
  . Se considera una variable que pueda ser declarada apenas inicie la clase sin necesidad de de llamarla a través de métodos o de inicializarla a través de métodos.

Características de las variables globales:
  . Se usan a nivel de todo el programa.
  . Deberían iniciar con $.

¿Qué son las constantes?
  . Tienen el mismo alcance que una variable, de acuerdo al lugar donde son declaradas.
  . Inician con una letra mayúscula o pueden ser todas mayúsculas.
  . No deberían cambiar su valor.

Nota: Al igual que las contantes, las variables siempre deben iniciar con mayúscula.

===============================================================
clase 17 Encapsulamiento 14:38 min
La programación orientada a objetos tiene ciertas características, como por ejemplo, el encapsulamiento.
Estas son algunas características del encapsulamiento:
  * Exponer el comportamiento externo de la clase mediante métodos.
  * Proteger los datos internos.
  * Scopes en Ruby: public, protected, private.
  * Accessors.

Tipos de Accessors:
  * attr_reader
  * attr_writer
  * attr_accessor
Los modificadores de acceso son el acceso que le podemos dar a distintos métodos, estos pueden ser:
- Public. Default
- Private. Solo van a funcionar en esa clase, no se pueden llamar desde el objeto ni pueden heredar una clase hijo.
- Protected. No se pueden llamar una vez creado el objeto, pero sí va a poder heredar una clase hijo.

===============================================================
clase 18 Herencia 11:17 min

Características de las herencias en Ruby:
  * Mecanismo para reutilizar código.
  * Una clase (hija) extiende el comportamiento de otra clase (padre).
  * Aplican las modificaciones de acceso.
  * Se pueden sobre-escribir los métodos.
  * Todas las clases heredan de BasicObject.
  * No existe herencia múltiple.

Ruby tiene una palabra reservada para el caso de herencias llamada “super”. Lo que hace super es poder obtener todas las líneas de código que tiene el mismo método en una clase padre.

===============================================================
clase 19 Simulador de patos 12:51 min

Para poder entrar a una constante quetienes un metodo es con doble dos preguntemos

===============================================================
clase 20 Mixins 7:13 min

Los Mixins están diseñados para que los módulos nos sirvan como herencia múltiple.
Algunas características de los mixins son:
  * Mezcla entre módulos y clases.
  * Es una clase que implementa un módulo.
  * Se puede crear mediante:
    * Método include
    * Método extend

===============================================================
clase 21 Polimorfismo 10:50 min

Estas son algunas características del Polimorfismo:
  * Las subclases pueden definir su comportamiento propio y compartir la funcionalidad de la clase padre.
  * los métodos se pueden sobre-escribir.

===============================================================
clase 22 Gemas 5:33 min

===============================================================
clase 23 TestingGemas 10:34 min

En Ruby hay un proceso que se llama Testing que consiste en un programa externo que podemos crear con el fin de probar nuestro código, también con esto podemos guardar ciertas características, ciertas funcionalidades que tengamos ya escritas. Esto quiere decir que por cada funcionalidad nosotros podemos tener cinco o más casos de uso.

Test Driven Development = Es una forma de cómo se podría desarrollar. Consta de 3 pasos:
1) Primero se escriben los test y hacemos que falle.
2) Escribir el código que haga que los casos de uso realmente pasen con el código que estamos escribiendo.
3) Refactor. Ver lo que acabamos de escribir y ordenarlo de acuerdo cómo nosotros estemos trabajando.

===============================================================
clase 24 Convenciones de código, rubocop 6:36 min

https://github.com/alemohamad/ruby-style-guide/blob/master/README-esLA.md

===============================================================
clase 25 Que es hacer scrapping? 16:17 min 

===============================================================
clase 26 Descargar una lista de archivos 5>53 min 

===============================================================
clase 27 Hacer una app sencilla 12:42 min

gema rack y para ejecutar rackup (nombre del archivo).rb

===============================================================
clase 28 Usar API 9:51 min

===============================================================
clase 29 Hacer deploy 10:14 min

- agregar a nuestra aplicacion el Gemfille
- para obtener un gemfile.lock se debe instalar la gema bundler
   gem install bundler
   despues se ejecuta el bundle install

===============================================================
clase 30 Cierre del curso 1:52 min  

===============================================================











