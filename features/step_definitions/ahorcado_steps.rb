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
	pending
  	visit '/adivinar', :post, "letra=p"
end

Then(/^Se muestra un mensaje de letra incorrecta$/) do
	pending
	last_response.body.should =~ /Letra incorrecta!/m
end

