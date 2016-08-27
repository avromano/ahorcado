require 'sinatra'
require './lib/diccionario'
require './lib/palabra_match'

@@resultado_letra = ""
@@resultado_palabra = ""

get '/' do
	dic = Diccionario.new
	@@palabra_elegida = dic.elegirPalabra

	@@palabra_match = PalabraMatch.new(@@palabra_elegida)

  @@contador = @@palabra_match.contador

  @@lista_letras = []

  @@palabra_a_adivinar = @@palabra_match.palabra_adivinada

  erb :index
end

post '/adivinar' do
  palabra = params["palabra"].to_s
  letra = params["letra"].to_s

  if palabra != ""
    if palabra == @@palabra_elegida
      @@resultado_palabra = "Palabra correcta!"
    else 
      @@resultado_palabra = "Palabra incorrecta!"
    end
    @@resultado_letra = ""
  else 

    if @@palabra_match.valida_letra(letra)
      @@resultado_letra = "Letra correcta!"
    else
      @@resultado_letra = "Letra incorrecta!"
      @@contador = @@contador - 1
    end
    @@resultado_palabra = ""
    @@lista_letras.push(letra)
  end

  puts @@contador
  if @@contador.to_i == 0
     erb :lose
  else
     if @@resultado_palabra == "Palabra correcta!"
         erb :win
     else
        erb :index
      end
  end

end
