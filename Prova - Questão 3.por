programa
{
	
	const inteiro numAlunos = 10
	
	funcao inicio()
	{
		cadeia vAlunos[numAlunos]
		inteiro vNotaP1[numAlunos], vNotaP2[numAlunos], notaP1, notaP2
		real vMedia[numAlunos]

		para(inteiro i = 0; i<numAlunos; i++)
		{
			escreva("Insira o nome do aluno: ")
			leia(vAlunos[i])
			
			escreva("Insira a nota do aluno ", vAlunos[i], " na P1: ")
			leia(vNotaP1[i])

			escreva("Insira a nota do aluno ", vAlunos[i], " na P2: ")
			leia(vNotaP2[i])

			vMedia[i] = (vNotaP1[i]+vNotaP2[i])/2
		}
		
		escreva("\n\n")
		escreva("ALUNO\t | NOTA P1\t| NOTA P2\t| MÉDIA\t\t| SITUAÇÃO\t |\n\t |\t\t|\t\t|\t\t|\t\t |\n")
		
		para(inteiro j = 0; j<numAlunos; j++)
		{
			se(vAlunos[j] == "Aluno 10")
				escreva(vAlunos[j], " | ", vNotaP1[j], "\t\t| ", vNotaP2[j], "\t\t| ", vMedia[j], "\t")
			senao
				escreva(vAlunos[j], "\t | ", vNotaP1[j], "\t\t| ", vNotaP2[j], "\t\t| ", vMedia[j], "\t")
				
			se(vMedia[j]>=6)
				escreva("\t| Aprovado!\t |\n")
			senao
				escreva("\t| Reprovado\t |\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 831; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */