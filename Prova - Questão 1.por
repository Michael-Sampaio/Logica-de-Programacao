programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		real num1, num2
		logico valido = verdadeiro
		cadeia opcao

		faca
		{	
			limpa()
			
			escreva("Insira o primeiro número da divisão: \n")
			leia(num1)
		
			escreva("\nInsira o segundo número da divisão: \n")
			leia(num2)
			
			se(num2 <= 0)
			{
				escreva("\nNúmero inválido, o segundo número da divisão deve ser maior que zero\n")  
				valido = falso
			}
			senao
			{
				escreva("\nO resultado da divisão do número ", num1, " por ", num2, " é: ", mat.arredondar(num1/num2, 2), "\n")
				escreva("\nDeseja realizar outra divisão?(S/N) ")
				leia(opcao)
				
					se(opcao == "S")
					{
						valido = falso
					}
					senao
					{
						valido = verdadeiro
						limpa()
					}
			}
		}enquanto (nao valido)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 713; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */