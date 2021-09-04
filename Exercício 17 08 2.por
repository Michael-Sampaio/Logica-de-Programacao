programa
{
	inclua biblioteca Matematica--> mat
	
	funcao inicio()
	{
		const inteiro ANO = 360, MES = 30
		inteiro dias, mesesSemAcidente, anosSemAcidente, restoAno

		escreva("\nA quantos dias não acontecem acidentes? ")
		leia(dias)

		anosSemAcidente = (dias/ANO)
		
		restoAno = (dias%ANO)
		
		mesesSemAcidente = (restoAno/MES)
		
		dias = (restoAno%MES)
		
			se(anosSemAcidente == 1) {
				escreva("\nMão ocorrem acidentes a: ", anosSemAcidente," ano, ")
			}
			senao 
				escreva("\nNão ocorrem acidentes a: ", anosSemAcidente," anos, ")
	
			se(mesesSemAcidente == 1) {
				escreva(mesesSemAcidente," mês e ")
			}
			senao 
				escreva(mesesSemAcidente," meses e ")

			se(dias == 1) {
				escreva(dias," dia.\n")
			}
			senao 
				escreva(dias," dias.\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 339; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */