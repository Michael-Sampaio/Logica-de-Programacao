programa
{
	inclua biblioteca Matematica --> mat

	inteiro maiorNum = 0, menorNum = 0
	
	funcao inicio()
	{
		inteiro vNum[10]
		real media = 0

		para(inteiro i = 0; i<10; i++)
		{
			escreva("Insira um número: ")
			leia(vNum[i])
		}

		maior(vNum)
		menor(vNum)
		escreva("\nO maior número inserido foi: ", maiorNum, "\nO menor número inserido foi: ", menorNum, 
		"\nA média dos dois valores é: ", (maiorNum+menorNum)/2, "\n")

	}

	funcao maior(inteiro vNum[])
	{
		para(inteiro j = 1; j<10; j++)
		{
			se(maiorNum < vNum[j])
			{
				maiorNum = mat.maior_numero(vNum[j-1], vNum[j])
			}
		}
	}
	
	funcao menor(inteiro vNum[])
	{
		menorNum = maiorNum
		
		para(inteiro j = 1; j<10; j++)
		{
			se(menorNum > vNum[j])
			{
				menorNum = mat.menor_numero(vNum[j-1], vNum[j])
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 657; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */