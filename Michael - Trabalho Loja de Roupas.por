programa
{
	inclua biblioteca Tipos --> tp
	inclua biblioteca Util --> u
	
	const inteiro PRODUTOS = 20, CAMPOS = 4
	cadeia vetorProduto[] = {"Camisa", "Camiseta", "Calça", "Bermuda"}
	cadeia vetorCor[] = {"vermelho", "preto", "amarelo", "azul", "branco", "verde", "preto"} 
	cadeia vetorTamanho[] = {"PP", "P", "M", "G", "GG"}

	cadeia matrizCadastro[PRODUTOS][CAMPOS]
	inteiro matrizBalanco[PRODUTOS][2]
	cadeia aguardar
	
	funcao inicio()
	{	
		preencheProdutos()		
		menu()		
		limpa()	
	}

	funcao menu()
	{
		inteiro opcao
		logico sair = falso		
		
		enquanto (nao sair)
		{
			limpa()
			escreva("    Escolha uma opcao")
			escreva("\n------------------------\n")
			escreva("1 - Informar o produto\n")
			escreva("2 - Imprimir cadastro\n")
			escreva("3 - Imprimir inventário\n")
			escreva("4 - Sair")
			escreva("\n------------------------\n")
			leia(opcao)
			
			escolha(opcao)
			{
				caso 1: inventario() pare
				caso 2: imprimeProdutos(falso) pare
				caso 3: imprimeBalanco() pare
				caso 4: sair = verdadeiro pare
				caso contrario: escreva("Opção inexistente")
			}
			escreva("\nPressione uma tecla")
			leia(aguardar)			
		}
	}

	funcao preencheProdutos()
	{
		inteiro linha

		para (inteiro posicao = 0; posicao < 20; posicao++)
		{
			linha = u.numero_elementos(vetorProduto) -1
			matrizCadastro[posicao][0] = tp.inteiro_para_cadeia(posicao,10)
			matrizCadastro[posicao][1] = vetorProduto[u.sorteia(0, linha)]
			linha = u.numero_elementos(vetorCor) -1
			matrizCadastro[posicao][2] = vetorCor[u.sorteia(0, linha)]
			linha = u.numero_elementos(vetorTamanho) -1
			matrizCadastro[posicao][3] = vetorTamanho[u.sorteia(0, linha)]

			matrizBalanco[posicao][0] = -1
			matrizBalanco[posicao][1] = 0
		}
	}

	funcao inventario()
	{
		inteiro codigo
		cadeia sCodigo, codCadastro, produto
		logico encontrou

		faca{			
			encontrou = falso
			codCadastro = ""
			limpa()
			escreva("Informe o código do produto (ou -1 para sair): ")
			leia(codigo)
	
			se (codigo >= 0){
				para (inteiro posicao = 0; posicao < 20; posicao++)
				{
					sCodigo = tp.inteiro_para_cadeia(codigo, 10)
					codCadastro = matrizCadastro[posicao][0]
					
					se (sCodigo == codCadastro){
						encontrou = verdadeiro
					}
					se (encontrou){
						posicao = 20
					}
				}
		
				se (encontrou){			
					codigo = tp.cadeia_para_inteiro(codCadastro, 10)
					produto = matrizCadastro[codigo][1] +" "+ matrizCadastro[codigo][2] +" "+ matrizCadastro[codigo][3]
					escreva("\nProduto: ", produto, "\n")
					incluirProdutoInventario(codigo)
				}
				senao{
					escreva("\nCódigo de produto não encontrado\n")				
					escreva("\nPressione uma tecla")
					leia(aguardar)
				}
			}
		}enquanto (codigo >= 0)
	}

	funcao incluirProdutoInventario(inteiro pCodigo)
	{
		inteiro quant
		logico codExiste = falso
		
		escreva("Informe a quantidade: ")
		leia(quant)

		se (quant > 0){
			para (inteiro posicao = 0; posicao < 20; posicao++)
			{
				se (pCodigo == matrizBalanco[posicao][0] ou matrizBalanco[posicao][0] == -1){
				   	matrizBalanco[posicao][0] = pCodigo
				   	matrizBalanco[posicao][1] += quant
					codExiste = verdadeiro
				}
				se (codExiste){
					posicao = 20
				}
			}
		}
	}
	
	funcao imprimeProdutos(logico pOrdenar)
	{
		cadeia codigo, descricao, cor, tamanho

		limpa()
		escreva("\n---------  Lista de Produtos  --------\n")			
		escreva("Cód. - Descrição\n")
		escreva("--------------------------------------\n")
			
		para (inteiro posicao = 0; posicao < 20; posicao++){
			codigo = matrizCadastro[posicao][0]
			descricao = matrizCadastro[posicao][1]
			cor = matrizCadastro[posicao][2]
			tamanho = matrizCadastro[posicao][3]

			se (tp.cadeia_para_inteiro(codigo, 10) < 10) {
				escreva(codigo, "    - ", descricao, " ", cor, " ", tamanho, "\n")
			}
			senao{
				escreva(codigo, "   - ", descricao, " ", cor, " ", tamanho, "\n")
			}			
		}
	}

	funcao imprimeBalanco()
	{
		cadeia codigo, descricao, cor, tamanho
		inteiro codInv, quant
		limpa()
		escreva("\n-------------  Inventário  -----------\n")			
		escreva("Cód. - Descrição           - Quant\n")
		escreva("--------------------------------------\n")
			
		para (inteiro posicao = 0; posicao < 20; posicao++){
			
			se (matrizBalanco[posicao][0] >= 0){
				
				codInv = matrizBalanco[posicao][0]
				quant = matrizBalanco[posicao][1]
				
				codigo = matrizCadastro[codInv][0]
				descricao = matrizCadastro[codInv][1]
				cor = matrizCadastro[codInv][2]
				tamanho = matrizCadastro[codInv][3]
	
				se (tp.cadeia_para_inteiro(codigo, 10) < 10) {
					escreva(codigo, "    - ", descricao, " ", cor, " ", tamanho, " = ", quant, "\n")
				}
				senao{
					escreva(codigo, "   - ", descricao, " ", cor, " ", tamanho, " = ", quant, "\n")
				}
			}			
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3888; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */