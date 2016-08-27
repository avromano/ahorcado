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

	it "se registra una nueva letra" do
		dicc = Diccionario.new
		palabra_elegida = dicc.elegirPalabra
		palabra_match = PalabraMatch.new(palabra_elegida)
		resultado = palabra_match.valida_letra("h")
		lista_letras = palabra_match.letras_ingresadas
		expect(lista_letras).to be == ["h"]
	end

	it "se muestra la palabra a adivinar con guiones" do
		dicc = Diccionario.new
		palabra_elegida = dicc.elegirPalabra
		palabra_match = PalabraMatch.new(palabra_elegida)
		palabra_adivinada = palabra_match.palabra_adivinada
		expect(palabra_adivinada).to be == "_ _ _ _ "
	end
	
	it "se ingresa una letra correcta y se muestra en la palabra a adivinar" do
		dicc = Diccionario.new
		palabra_elegida = dicc.elegirPalabra
		palabra_match = PalabraMatch.new(palabra_elegida)
		palabra_match.valida_letra("h")
		palabra_adivinada = palabra_match.palabra_adivinada
		expect(palabra_adivinada).to be == "h _ _ _ "
	end
end
