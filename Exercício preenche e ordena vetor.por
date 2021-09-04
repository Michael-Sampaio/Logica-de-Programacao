programa
{	
	funcao inicio()
	{
		inteiro vetor1[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}, vetor2[10], maior = 0
		
		preenche(vetor1, vetor2)
		ordena(vetor2)
		exibe(vetor1, vetor2)
	}
	
	funcao preenche(inteiro vetor1[], inteiro vetor2[])
	{
		para (inteiro posicao = 0; posicao <10; posicao++)
		{
			vetor2[posicao] = vetor1[posicao]
		}
	}
	
	funcao ordena (inteiro vetor2[])
	{
		para (inteiro i = 0; i < 10; i++)
		{
			para (inteiro j = 0; j < 9; j++)
			{
				se (vetor2 [j] < vetor2 [j+1])
				{
					troca (vetor2, j, j+1)
				}
			}
		}
	}
	
	funcao troca(inteiro vetor2[], inteiro a, inteiro b)
	{
		inteiro aux = vetor2[a]

		vetor2[a] = vetor2[b]
		vetor2[b] = aux
	}
	
	funcao exibe(inteiro vetor1[], inteiro vetor2[])
	{
		escreva("vetor original: ")
		
		para(inteiro posicao = 0; posicao <10; posicao++)
		{
			escreva(vetor1[posicao], " ")
		}

		escreva("\nvetor reordenado: ")
		
		para(inteiro posicao = 0; posicao <10; posicao++)
		{
			escreva(vetor2[posicao], " ")
		}
		escreva("\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1010; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */