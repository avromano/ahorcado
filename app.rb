require 'sinatra'

@@resultado = ""

get '/' do
    erb :index
end

post '/adivinar' do
  dicc = ["hola"]
  palabra = params["palabra"]
  if palabra == dicc[0]
    @@resultado = "Palabra correcta!"
  else 
    @@resultado = "Palabra incorrecta!"
  end
  erb :index
end
