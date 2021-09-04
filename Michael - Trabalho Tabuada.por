programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		inteiro tabuada = 1, numero, operacao
		logico sair = falso
		cadeia aguardar
		
		faca
		{
			escreva("\nEscolha um número para começar: \n\n")
			leia(numero)
		
			escreva("\nEscolha a operação que deseja realizar: \n\n")
			
			escreva("1 - Soma\n")
			escreva("2 - Subtração\n")
			escreva("3 - Multiplicação\n")
			escreva("4 - Divisão\n")
			escreva("5 - Sair\n\n")
		
			leia(operacao)
		
			escolha(operacao)
			{
				caso 1:
					escreva("\nTabuada de Soma selecionada.\n")
					limpa()
					soma(numero, tabuada)
					pare

				caso 2:
					escreva("\nTabuada de Subtração selecionada.\n")
					limpa()
					subtracao(numero, tabuada)
					pare
							
				caso 3:
					escreva("\nTabuada de Multiplicação selecionada.\n")
					limpa()
					multiplica(numero, tabuada)
					pare
							
				caso 4:
					escreva("\nTabuada de Divisão selecionada.\n")
					limpa()
					divisao(numero, tabuada)
					pare

				caso 5:
					escreva("\nSair\n")
					limpa()
					sair = verdadeiro
					escreva("\nFinalizando programa.\n")
					pare
						
				caso contrario:
					escreva("\nOpção não existente, pressione uma tecla para voltar ao menu.\n")
					leia(aguardar)
					sair = falso
			}
		}enquanto(nao sair)
	
	}
	funcao soma (inteiro somaNum, inteiro somaTabuada)
	{
		
		para(inteiro contador = somaNum; somaTabuada <= 10; somaTabuada++)
		{
			escreva(contador, " + ", somaTabuada, " = ", contador + somaTabuada,"\n")
		}
	
	}
	funcao subtracao (inteiro subNum, inteiro subTabuada)
	{
	
		para(inteiro contador = subNum; subTabuada <= 10; subTabuada++)
		{
			escreva(contador, " - ", subTabuada, " = ", contador - subTabuada,"\n")
		}

	}
	funcao multiplica (inteiro multNum, inteiro multTabuada)
	{
	
		para(inteiro contador = multNum; multTabuada <= 10; multTabuada++)
		{
			escreva(contador, " * ", multTabuada, " = ", contador * multTabuada,"\n")
		}
	
	}
	funcao divisao (real divNum, real divTabuada)
	{
	
		para(real contador = divNum; divTabuada <= 10; divTabuada++)
		{
			escreva(contador, " / ", divTabuada, " = ", mat.arredondar(contador / divTabuada, 2),"\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1944; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */