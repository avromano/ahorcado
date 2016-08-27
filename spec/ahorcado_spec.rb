require "./lib/diccionario"

describe "juego de ahorcado" do
	it "se elige una palabra 'hola'" do
		dicc = Diccionario.new
		palabra_elegida = dicc.elegirPalabra
		expect(palabra_elegida).to be == "hola"
	end
end
