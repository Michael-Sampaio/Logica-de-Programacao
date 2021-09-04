programa
{
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		inteiro operacao, numero
		logico sair = falso

		faca
		{
			escreva("\nEscolha a operação que deseja realizar: \n\n")
			
			escreva("1 - Fibonacci\n")
			escreva("2 - Fatorial\n")
			escreva("3 - Sair\n\n")
			leia(operacao)

			escolha(operacao)
			{
				caso 1:
					escreva("\nCálculo Fibonacci selecionado.\n")
					escreva("\nQuantos elementos da sequência de Fibonacci deseja calcular? ")
					leia(numero)
					fibonacci(numero)
					pare
				caso 2:
					escreva("\nOperação fatorial selecionada.\n")
					escreva("\nInsira o número com o qual deseja realizar a operação: ")
					leia(numero)
					fatorial(numero)
					pare
				caso 3:
					escreva("\nFinalizando o programa.")
					sair = verdadeiro
					u.aguarde(500)
					limpa()
					pare
			}
		}enquanto (nao sair)
	}
	
	funcao fibonacci(inteiro num)
	{
		cadeia aguardar
		
		limpa()
		escreva("\n")
		escreva("O termo de uma sequência de ", num, " de Fibonacci é: ")
		
		para (inteiro i = 1; i <= num ; i++)
		{
			escreva(calculoFi(i), " ")
		}
		escreva("\n\nPressione uma tecla para retornar ao menu.")
		leia(aguardar)
		limpa()
	}
	
	funcao inteiro calculoFi(inteiro posicao)
	{		
		se (posicao == 1)
		{
			retorne 1
		}
		senao se (posicao == 2)
		{
			retorne 1
		}
		retorne calculoFi(posicao - 1) + calculoFi(posicao - 2)		
	}
	
	funcao fatorial(inteiro numero)
	{
		cadeia aguardar

		limpa()
		escreva("\nO Fatorial(", numero, ") = ")
		escreva(calculoFa(numero), "\n")
		escreva("\nPressiona uma tecla para voltar ao menu.")
		leia(aguardar)
		limpa()
	}
		
	funcao inteiro calculoFa(inteiro n)
	{
		se (n == 1)
		{
			escreva("1 = ")
			retorne 1
		}
		senao
		{
			escreva(n, " * ")
			retorne n * calculoFa(n-1)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1440; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */