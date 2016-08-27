class PalabraMatch
	@palabra_a_adivinar = ""
	def initialize(palabra)
		@@contador = 6
		@palabra_a_adivinar = palabra
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

end
