programa
{
	inclua biblioteca Util --> u
	
	inteiro i, j, aux, troca = 0
	cadeia aguardar
	
	funcao inicio()
	{
		inteiro vetNum[10], opcao
		logico sair = falso

		preenche(vetNum)

		faca
		{
			limpa()
			escreva("Escolha uma das opções a seguir: \n")
			escreva("1 - Exibir os números em ordem crescente\n")
			escreva("2 - Exibir os números em ordem descrescente\n")
			escreva("3 - Sair\n")
			leia(opcao)

			escolha(opcao)
			{
				caso 1:
				crescente(vetNum)
				pare

				caso 2:
				decrescente(vetNum)
				pare

				caso 3:
				escreva("\nFinalizando o programa.")
				u.aguarde(500)
				sair = verdadeiro
				limpa()
			}
		}enquanto (nao sair)
	}

	funcao preenche(inteiro vetP[])
	{
		para(inteiro posicao = 0; posicao<10; posicao++)
		{
			escreva("Insira um número ")
			leia(vetP[posicao])
		}
	}
	
	funcao crescente(inteiro vetC[])
	{
		limpa()
		
		para(i = 0; i < 10; i++)
		{			
			faca
			{
				troca = 0
				para(i = 0; i < 10 - 1; i++)
				{
					se(vetC[i] > vetC[i+1])
					{
						aux = vetC[i]
						vetC[i] = vetC[i+1]
						vetC[i+1] = aux
						troca = 1
					}
				}
			}enquanto(troca == 1)
		}
		para(i = 0; i < 10; i++)
		{
			escreva(vetC[i], " ")
		}
		escreva("\nPressione uma tecla para retornar ao menu.")
		leia(aguardar)
	}
	
	funcao decrescente (inteiro vetD[])
	{
		limpa()
		
		para(i = 0; i < 10; i++)
		{			
			faca
			{
				troca = 0
				para(i = 0; i < 10 - 1; i++)
				{
					se(vetD[i] < vetD[i+1])
					{
						aux = vetD[i]
						vetD[i] = vetD[i+1]
						vetD[i+1] = aux
						troca = 1
					}
				}
			}enquanto(troca == 1)
		}
		para(i = 0; i < 10; i++)
		{
			escreva(vetD[i], " ")
		}
		escreva("\nPressione uma tecla para retornar ao menu.")
		leia(aguardar)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 204; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */