require 'sinatra'
require './lib/diccionario'
require './lib/palabra_match'

dic = Diccionario.new
@@palabra_elegida = dic.elegirPalabra

@@palabra_match = PalabraMatch.new(@@palabra_elegida)
@@contador = @@palabra_match.contador

@@resultado_letra = ""
@@resultado_palabra = ""

get '/' do
  erb :index
end

post '/adivinar' do
  palabra = params["palabra"]
  letra = params["letra"].to_s

  if palabra 
    if palabra == @@palabra_elegida
      @@resultado_palabra = "Palabra correcta!"
    else 
      @@resultado_palabra = "Palabra incorrecta!"
    end
  else 

    if @@palabra_match.valida_letra(letra)
      @@resultado_letra = "Letra correcta!"
    else
      @@resultado_letra = "Letra incorrecta!"
    end
  end

  erb :index
end
