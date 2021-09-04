programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		const real broa = 1.50, pao = 0.12
		real total
		inteiro vendaBroa, vendaPao
	
		escreva("quantas broas você vendeu hoje? ")
		leia(vendaBroa)

		escreva("quantos pães você vendeu hoje? ")
		leia(vendaPao)

		total = mat.arredondar((((vendaBroa * broa) + (vendaPao * pao)) * 0.10), 2)

		escreva("\nvocê arreacadou R$", (vendaBroa * broa) + (vendaPao * pao), " com a venda de pães e broas, e deve guardar R$"
		, total, " na conta poupança\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 520; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */