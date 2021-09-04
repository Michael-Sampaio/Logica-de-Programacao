programa
{
	
	funcao inicio()
	{
		inteiro n1, n2
		inteiro somaNumerosPares = 0
		
		escreva("Informe n1: ")
		leia(n1)
		
		escreva("Informe n2: ")
		leia(n2)

		para(inteiro i = n1; i <= n2; i++)
		{
			se(i % 2 == 0)
			{
				somaNumerosPares = somaNumerosPares + i
			}
		}

		somaNumerosPares = somaNumerosPares - n1 - n2

		escreva("A soma dos números pares nessa sequência é: " + somaNumerosPares)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 278; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */