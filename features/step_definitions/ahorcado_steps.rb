Given(/^Se ingresa la palabra correcta$/) do
	visit '/adivinar', :post, "palabra=hola"
end

Then(/^Se muestra mensaje de palabra correcta$/) do
  	last_response.body.should =~ /Palabra correcta!/m
end

Given(/^El usuario ingresa una letra acertada$/) do
  	visit '/adivinar', :post, "letra=h"
end

Then(/^Se muestra un mensaje de letra correcta$/) do
  	last_response.body.should =~ /Letra correcta!/m
end

Given(/^El usuario ingresa una letra erronea$/) do
  	visit '/adivinar', :post, "letra=p"
end

Then(/^Se muestra un mensaje de letra incorrecta$/) do
	last_response.body.should =~ /Letra incorrecta!/m
end

Given(/^El Juego se inicia$/) do
  visit '/'
end

Then(/^Se establece el contador en (\d+)$/) do |arg1|
  last_response.body.should =~ /Chances = 6/m
end

Then(/^Se descuenta una chance$/) do
  last_response.body.should =~ /Chances = 5/m
end

