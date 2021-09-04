programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Matematica --> mat

	funcao inicio()
	{
		cadeia aguardar, opcao
		logico sair = falso
		inteiro operacao, num1, num2
		
		faca
		{
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
					escreva("\nOpção soma selecionada:\n")
					limpa()
					
					escreva("Insira o primeiro número com que deseja realizar o cálculo: ")
					leia(num1)
					escreva("Insira o segundo número com que deseja realizar o cálculo: ")
					leia(num2)
				
					escreva("\nA soma do número ", num1, " e do número ", num2, " é igual a: ", num1 + num2, "\n")
					escreva("\nDeseja realizar novo cálculo?(S/N) \n")
					leia(opcao)

					se(opcao == "S")
						inicio()
					senao sair = verdadeiro
						limpa()
						escreva("\nFinalizando programa.\n")
					pare

				caso 2:
					escreva("\nOpção Subtração selecionada.\n")
					limpa()
					escreva("Insira o primeiro número com que deseja realizar o cálculo: ")
					leia(num1)
					escreva("Insira o segundo número com que deseja realizar o cálculo: ")
					leia(num2)
				
					escreva("\nA subtração do número ", num1, " pelo número ", num2, " é igual a: ", num1 - num2, "\n")
					escreva("\nDeseja realizar novo cálculo?(S/N) \n")
					leia(opcao)

					se(opcao == "S")
						inicio()
					senao sair = verdadeiro
						limpa()
						escreva("\nFinalizando programa.\n")
					pare
							
				caso 3:
					escreva("\nOpção Multiplicação selecionada.\n")
					limpa()
					escreva("Insira o primeiro número com que deseja realizar o cálculo: ")
					leia(num1)
					escreva("Insira o segundo número com que deseja realizar o cálculo: ")
					leia(num2)
				
					escreva("\nA multiplicação do número ", num1, " pelo número ", num2, " é igual a: ", num1 * num2, "\n")
					escreva("\nDeseja realizar novo cálculo?(S/N) \n")
					leia(opcao)

					se(opcao == "S")
						inicio()
					senao sair = verdadeiro
						limpa()
						escreva("\nFinalizando programa.\n")
					pare
							
				caso 4:
					escreva("\nOpção Divisão selecionada.\n")
					limpa()
					escreva("Insira o primeiro número com que deseja realizar o cálculo: ")
					leia(num1)
					escreva("Insira o segundo número com que deseja realizar o cálculo: ")
					leia(num2)
				
					escreva("\nA divisão do número ", num1, " e do número ", num2, " é igual a: ", num1 / num2, "\n")
					escreva("\nDeseja realizar novo cálculo?(S/N) \n")
					leia(opcao)

					se(opcao == "S")
						inicio()
					senao sair = verdadeiro
						limpa()
						escreva("\nFinalizando programa.\n")
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
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2850; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */