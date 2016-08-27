class PalabraMatch
	@palabra_a_adivinar = []
	def initialize(palabra)
		@@contador = 6
		@palabra_a_adivinar = palabra.split("")
		@letras_ingresadas = []
	end

	def valida_letra(letra)
		@letras_ingresadas.push(letra)
		return @palabra_a_adivinar.include?(letra)
	end

	def contador
		@@contador
	end
		
	def letras_ingresadas
		@letras_ingresadas
	end

	def palabra_adivinada
		pos = 0
		palabra_adivinada = ""
		@palabra_a_adivinar.each do |letra|
			if @letras_ingresadas.include?(letra)
				palabra_adivinada = palabra_adivinada + letra + " "
			else
				palabra_adivinada = palabra_adivinada + "_ "
			end
			pos = pos + 1
		end
		return palabra_adivinada
	end

end
