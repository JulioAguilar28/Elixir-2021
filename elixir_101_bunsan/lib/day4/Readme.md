Escribir un módulo con una función que reciba un texto (un string de palabras separadas por espacios)
y regrese un mapa con la frecuencia de las palabras contenidas en dicho texto.

Extra
Agregar soporte para introducir cualquier texto, de tal manera que:

- Se ignoren signos de puntuación
- Se consideren iguales las vocales con y sin acento
- Se consideren iguales letras mayúsculas o minúsculas.
- La función principal reciba una ruta de archivo, y el mismo contenga párrafos de texto.

Ejemplo

MyModule.frequencies("a los bunsancitos les gusta programar con otros bunsancitos y jugar con mas bunsancitos y con sus mascotas")
%{
"a" => 1,
"bunsancitos" => 3
"con" => 3,
"gusta" => 1,
"jugar" => 1,
"les" => 1,
"los" => 1,
"mas" => 1,
"mascotas" => 1,
"otros" => 1,
"programar" => 1,
"sus" => 1,
"y" => 2
}
