class PalabraMatch
	@palabra_a_adivinar = ""
	def initialize(palabra)
		@palabra_a_adivinar = palabra
	end

	def valida_letra(letra)
		@palabra_a_adivinar.include?(letra)
	end
end
