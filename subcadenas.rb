# Implementar un método #buscarstrings que toma una palabra como primer argumento y luego una serie de buscarcadenas válidas (su diccionario) como segundo argumento. Debería devolver un hash que enumere cada buscarcadena (sin distinguir entre mayúsculas y minúsculas) que se encontró en la cadena original y cuántas veces se encontró.

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def buscar_subcadenas(cadena, diccionario)
  cadena = cadena.downcase
  contador = Hash.new(0)

  i = 0
  while i < diccionario.length
    palabra = diccionario[i]
    j = 0
    while j <= cadena.length - palabra.length
      if cadena[j, palabra.length] == palabra
        contador[palabra] += 1
        j += palabra.length
      else
        j += 1
      end
    end
    i += 1
  end

  return contador
end

puts buscar_subcadenas("Howdy partner, sit down! How's it going?", dictionary)