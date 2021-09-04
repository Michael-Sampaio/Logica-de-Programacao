programa
{
	inclua biblioteca Matematica	--> mat

	const inteiro TVETOR = 2
	inteiro vetorIdade[TVETOR], vetorCpf[TVETOR]
	cadeia vetorNome[TVETOR], vetorEnd[TVETOR]
	real vetorAlt[TVETOR]
	inteiro idade, cpf
	cadeia nome, end, aguardar
	real alt
		
	funcao inicio()
	{
		
		para(inteiro posicao = 0; posicao < TVETOR; posicao++)
		{
			escreva("\nInforme o nome: ")
			leia(nome)
	
			escreva("\nInforme a idade: ")
			leia(idade)
	
			escreva("\nInforme a altura: ")
			leia(alt)
	
			escreva("\nInforme o endereço: ")
			leia(end)
	
			escreva("\nInforme o CPF: ")
			leia(cpf)
				
			vetorCpf[posicao] = cpf
			vetorNome[posicao] = nome
			vetorIdade[posicao] = idade
			vetorAlt[posicao] = alt
			vetorEnd[posicao] = end
	
		}
		busca(cpf, nome, idade, alt, end)
		
	}
	funcao busca(inteiro bCpf, cadeia bNome, inteiro bIdade, real bAlt, cadeia bEnd)
	{
		logico opcao = falso
		inteiro menu

		faca
		{
				
			escreva("\nO que deseja fazer a seguir: \n\n")
				
			escreva("1 - Buscar dados pelo CPF \n")
			escreva("2 - Descobrir quem é mais velho e mais novo do grupo \n")
			escreva("3 - Descobrir quem é mais alto e mais baixo do grupo \n")
			escreva("4 - Descobrir a média de idade do grupo \n")
			escreva("5 - Imprimir uma lista com os nomes e idades do grupo \n")
			escreva("6 - Sair\n\n")

			leia(menu)

			escolha(menu)
			{
				caso 1:
					escreva("\n")
					localiza_cpf(bCpf, bNome, bIdade, bAlt, bEnd)
					limpa()
					pare
		
				caso 2:
					escreva("\n")
					pesquisa_idade(vetorNome, vetorIdade)
					limpa()
					pare

				caso 3:
					escreva("\n")
					pesquisa_alt(vetorNome, vetorAlt)
					limpa()
					pare

				caso 4:
					escreva("\n")
					media_idade(vetorIdade)
					limpa()
					pare

				caso 5:
					escreva("\n")
					imprime_lista(bCpf, bNome, bIdade, bAlt, bEnd)
					limpa()
					pare
				
				caso 6:
					escreva("\nFinalizando o programa, pressione uma tecla para sair.")
					opcao = verdadeiro
					leia(aguardar)
					pare

				caso contrario:
					escreva("\nOpção inexistente")
					leia(aguardar)
					limpa()
					pare
			}
		}enquanto (nao opcao)
	}
	funcao localiza_cpf(inteiro localCpf, cadeia localNome, inteiro localIdade, real localAlt, cadeia localEnd)
	{	
		inteiro localizaCpf, menu2
		logico encontrou = falso, opcao = falso

		escreva("Informe o CPF que deseja localizar: \n\n")
		leia(localizaCpf)

		para(inteiro posicao = 0; posicao < TVETOR; posicao++)
			{
			se(vetorCpf[posicao] == localizaCpf)
				{
					encontrou = verdadeiro
					escreva("\nOs dados encontrados são os seguintes: ", vetorCpf[posicao], " | ", vetorNome[posicao], 
					" | ", vetorIdade[posicao], " | ", vetorAlt[posicao], " | ", vetorEnd[posicao], "\n")
					escreva("\nPressione uma tecla para voltar ao menu.\n")
					leia(aguardar)
				}
			}
			se(nao encontrou)
				{
				escreva("\nCPF não encontrado, pressione 1 para buscar novamente ou 2 para voltar ao menu.\n\n")
				leia(menu2)
				
					faca
						{
						escolha(menu2)
							{
							caso 1: localiza_cpf(localCpf, localNome, localIdade, localAlt, localEnd)
							pare

							caso 2: busca(localCpf, localNome, localIdade, localAlt, localEnd)
							pare

							caso contrario: escreva("Opção selecionada inexistente\n")
							limpa()
							pare
							}
						}enquanto (nao opcao)
				}
	}
	funcao pesquisa_idade(cadeia iNome[], inteiro iIdade[])
	{
		inteiro maior = 0, menor = 200
		cadeia nomeMaior = "0", nomeMenor = "0"
	
		para(inteiro i = 0; i< TVETOR; i++)
		{
			se(iIdade[i] > maior)
			{
				maior = iIdade[i]
				nomeMaior = iNome[i]
			}
			se(iIdade[i] < menor)
			{
				menor = iIdade[i]
				nomeMenor = iNome[i]
			}
		}
		escreva("O mais velho do grupo é ", nomeMaior, " com ", maior, " anos de idade,")
		escreva(" e o mais novo do grupo é ", nomeMenor, " com ", menor, " ano(s) de idade.\n")
		escreva("\nPressione uma tecla para voltar ao menu.")
		leia(aguardar)
	}
	funcao pesquisa_alt(cadeia aNome[], real aAlt[])
	{
		real maior = 0.0, menor = 200.0
		cadeia nomeMaior = "0", nomeMenor = "0"
	
		para(inteiro a = 0; a < TVETOR; a++)
		{
			se(aAlt[a] > maior)
			{
				maior = aAlt[a]
				nomeMaior = aNome[a]
			}
			se(aAlt[a] < menor)
			{
				menor = aAlt[a]
				nomeMenor = aNome[a]
			}
		}
		escreva("O mais alto do grupo é ", nomeMaior, " com ", maior, " metros de altura,")
		escreva(" e o mais baixo do grupo é ", nomeMenor, " com ", menor, " metros de altura.\n")
		escreva("\nPressione uma tecla para voltar ao menu.")
		leia(aguardar)
	}
	funcao media_idade(inteiro mIdade[])
	{
		real soma = 0.0
		real media = 0.0
		
			para(inteiro m = 0; m < TVETOR; m++)
			{
				soma = (soma + mIdade[m])
				media = mat.arredondar(soma/(m+1), 2)
				}
				escreva("A média de idade do grupo é ", media, " anos.\n")
				escreva("\nPressione uma tecla para voltar ao menu\n\n")
				leia(aguardar)
	}
	funcao imprime_lista(inteiro iCpf, cadeia iNome, inteiro iIdade, real iAlt, cadeia iEnd)
	{
		escreva ("-----------------------------------------------------------------------------------------\n")
		escreva ("|\tCPF\t|\t\tNome\t\t| Idade | Altura | Endereço\t\t|\n")
		escreva ("-----------------------------------------------------------------------------------------\n")

		para(inteiro i = 0; i < TVETOR; i++)
		{
			escreva("| ", vetorCpf[i], "\t\t| ", vetorNome[i], "\t\t\t\t| ", vetorIdade[i], "\t| ", vetorAlt[i], "\t | ", vetorEnd[i], "\t\t\t|\n")
		}
		escreva("\nPressione uma tecla para voltar ao menu\n")
		leia(aguardar)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2983; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */