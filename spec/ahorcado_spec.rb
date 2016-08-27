require "./lib/diccionario"
require './lib/palabra_match'

describe "juego de ahorcado" do
	it "se elige una palabra 'hola'" do
		dicc = Diccionario.new
		palabra_elegida = dicc.elegirPalabra
		expect(palabra_elegida).to be == "hola"
	end

	it "se elige una letra 'h'" do
		dicc = Diccionario.new
		palabra_elegida = dicc.elegirPalabra
		palabra_match = PalabraMatch.new(palabra_elegida)
		resultado = palabra_match.valida_letra("h")
		expect(resultado).to be == true
	end

	it "Se inicializa el contador" do
		dicc = Diccionario.new
		palabra_elegida = dicc.elegirPalabra
		palabra_match = PalabraMatch.new(palabra_elegida)
		contador = palabra_match.contador
		expect(contador).to be == 6
	end
end
