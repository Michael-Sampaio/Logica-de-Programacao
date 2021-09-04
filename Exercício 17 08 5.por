/* Faça um algoritmo que leia os valores A, B, C e imprima na tela se a soma de A + B é menor
que C
*/

programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
		{real A, B, C, soma, media

		escreva("insira o valor de A: ")
		leia(A)

		escreva("insira o valor de B: ")
		leia(B)

		escreva("insira o valor de C: ")
		leia(C)

		limpa()

		soma = B + C

		media = ((A + B + C) / 3)

			escreva("\na média dos 3 valores é: ", mat.arredondar(media, 1), "\n")
		
			se(soma > A)
			{
				escreva("\na soma de B + C é maior do que A\n")
			}
			senao{
				escreva("\na soma de B + C não é maior do que A\n")
			}
			se(A == C)
			{
				escreva("\nA é igual a C")
			}
			senao{
				escreva("\nA não é igual a C")
			}
		}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 429; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */