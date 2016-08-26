Given(/^Se ingresa la palabra correcta$/) do
	visit '/adivinar', :post, "palabra=hola"
end

Then(/^Se muestra mensaje de palabra correcta$/) do
  	last_response.body.should =~ /Palabra correcta!/m
end
