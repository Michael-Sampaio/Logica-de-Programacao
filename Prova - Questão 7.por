programa
{
	
	funcao inicio()
	{
		inteiro num = 2, qtDivisiveis, contPrimo, cont = 0
		
		escreva("Quantidade de números primos: ")
		leia(contPrimo)

		para(inteiro i=2; i<=num; i++)
		{
			qtDivisiveis = 0
			num++
						
			para(inteiro j=i; j>=1; j--)
			{
				se((i%j) == 0)
					qtDivisiveis++				
			}
			se(qtDivisiveis == 2)
			{
				escreva(i, "  ")
				cont++
					se(cont==contPrimo)
					pare
			}			
		}
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