require 'sinatra'
require './lib/diccionario'

@@resultado_letra = ""
@@resultado_palabra = ""

get '/' do
    erb :index
end

post '/adivinar' do
  dic = Diccionario.new
  palabra_elegida = dic.elegirPalabra
  palabra = params["palabra"]
  letra = params["letra"].to_s
  if palabra_elegida.include?(letra)
    @@resultado_letra = "Letra correcta!"
  else 
    @@resultado_letra = "Letra incorrecta!"
  end
  if palabra == palabra_elegida
    @@resultado_palabra = "Palabra correcta!"
  else 
    @@resultado_palabra = "Palabra incorrecta!"
  end
  erb :index
end
