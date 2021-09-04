/*7. A fábrica de refrigerantes Meia-Cola vende seu produto em três formatos: lata de 350 ml,
garrafa de 600 ml e garrafa de 2 litros. Se um comerciante compra uma determinada quantidade
de cada formato, faça um algoritmo para calcular quantos litros de refrigerante ele comprou.
*/

programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		const real LATA = 0.350, GARRAFA = 0.600
		const inteiro GARRAFA2L = 2
		inteiro lata350, garrafa600, garrafa2litros
		real total

		escreva("quantas latas de 350 ml foram compradas? ")
		leia(lata350)

		escreva("quantas garrafas de 600 ml foram compradas? ")
		leia(garrafa600)

		escreva("quantas garrafas de 2 litros foram compradas? ")
		leia(garrafa2litros)

		limpa()
		
		total = mat.arredondar((lata350 * LATA) + (garrafa600 * GARRAFA) + (garrafa2litros * GARRAFA2L), 3)
		escreva("\nForam comprados ", total, " litros de refrigerante.\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 901; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */