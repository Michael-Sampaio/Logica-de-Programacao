
programa 
{
	inclua biblioteca Matematica --> mat
	const real DESCONTO = 0.05, ACRESCIMO = 0.05
	funcao inicio ()
	{	
		
		const real PRECO_PARAFUSO = 0.09
		const real PRECO_ARRUELA  = 0.24
		const real PRECO_PORCA    = 1.00
          const real PRECO_BROCA    = 2.32
          const real PRECO_BUCHA    = 0.50
          const real PRECO_CHAVE    = 8.30                 

          caracter forma_pgto
          real total_parafusos, total_arruelas, total_porcas, total_brocas, total_buchas, total_chaves, total_pagar,total_liquido		
		real totalLiq_parafusos, totalLiq_arruelas, totalLiq_porcas, totalLiq_brocas, totalLiq_buchas, totalLiq_chaves		
		real desconto_parafusos, desconto_arruelas, desconto_porcas, desconto_brocas, desconto_buchas, desconto_chaves		
          real acresc_parafusos, acresc_arruelas, acresc_porcas, acresc_brocas, acresc_buchas, acresc_chaves         
          real acrescimo, desconto
          inteiro qtd_parafusos, qtd_arruelas, qtd_porcas, qtd_brocas, qtd_buchas, qtd_chaves, pagamento
		cadeia nome, Aguardar, dtValidade, forma_Ptgo, produto_A, produto_B, produto_C, produto_D, produto_E, produto_F

		produto_A = "Parafusos"
		produto_B = "Arruelas"
		produto_C = "Porcas"
		produto_D = "Brocas"
		produto_E = "Bucha"
		produto_F = "Chave de Fenda"
		
		desconto_parafusos = 0.00
		desconto_arruelas = 0.00
		desconto_porcas = 0.00
		desconto_brocas = 0.00
		desconto_buchas = 0.00
		desconto_chaves = 0.00
		
		acresc_parafusos = 0.00
		acresc_arruelas = 0.00
		acresc_porcas = 0.00
		acresc_brocas = 0.00
		acresc_buchas = 0.00
		acresc_chaves = 0.00

		desconto      = 0.00
		acrescimo     = 0.00

          forma_Ptgo = ""
		
          total_pagar   = 0.00
		total_liquido = 0.00
		
		
		escreva("Digite o nome do cliente: ") 
		leia(nome)

		escreva("\nInsira a validade do orçamento em dias: ")
		leia(dtValidade)
		
		escreva("\nInforme a quantidade de parafusos: ") 
		leia(qtd_parafusos)
		
		escreva("Informe a quantidade de arruelas: ") 
		leia(qtd_arruelas)

		escreva("Informe a quantidade de porcas: ") 
		leia(qtd_porcas)

		escreva("Informe a quantidade de brocas: ") 
		leia(qtd_brocas)

		escreva("Informe a quantidade de buchas: ") 
		leia(qtd_buchas)

		escreva("Informe a quantidade de chaves de fenda: ") 
		leia(qtd_chaves)

		total_parafusos = mat.arredondar((PRECO_PARAFUSO * qtd_parafusos), 2)
		total_arruelas  = mat.arredondar((PRECO_ARRUELA * qtd_arruelas), 2)
		total_porcas    = mat.arredondar((PRECO_PORCA * qtd_porcas), 2)
		total_brocas    = mat.arredondar((PRECO_BROCA * qtd_brocas), 2)
		total_buchas    = mat.arredondar((PRECO_BUCHA * qtd_buchas), 2)
		total_chaves    = mat.arredondar((PRECO_CHAVE * qtd_chaves), 2)
		
		total_pagar = mat.arredondar ((total_parafusos + total_porcas + total_arruelas + total_brocas + total_buchas + total_chaves), 2)

		limpa()

		escreva("Valor Total Bruto: R$ ", total_pagar, "\n")

		escreva("\nEscolha a forma de pagamento: ")
		escreva("\n1 - A vista")
		escreva("\n2 - Cartão")
		escreva("\n3 - A prazo \n\n")         
          
		leia(forma_pgto)
         
		escolha(forma_pgto)
		{            
		    caso '1' :	total_liquido = mat.arredondar(calculaTotal_liquido(total_pagar, verdadeiro, falso), 2)
		     	    	desconto = mat.arredondar(total_pagar - total_liquido, 2)
		     	    	forma_Ptgo = "A vista"
		     	    	
					desconto_parafusos = mat.arredondar(total_parafusos - calculaTotal_liquido(total_parafusos, verdadeiro, falso), 2)
					desconto_arruelas = mat.arredondar(total_arruelas - calculaTotal_liquido(total_arruelas, verdadeiro, falso), 2)
					desconto_porcas = mat.arredondar(total_porcas - calculaTotal_liquido(total_porcas, verdadeiro, falso), 2)
					desconto_brocas = mat.arredondar(total_brocas - calculaTotal_liquido(total_brocas, verdadeiro, falso), 2)
					desconto_buchas = mat.arredondar(total_buchas - calculaTotal_liquido(total_buchas, verdadeiro, falso), 2)
					desconto_chaves = mat.arredondar(total_chaves - calculaTotal_liquido(total_chaves, verdadeiro, falso), 2)
		    pare 	   		     	   		    
		    caso '2' :	total_liquido  = total_pagar
		              	forma_Ptgo = "Cartão"
		    pare         
		    caso '3' :	total_liquido =  calculaTotal_liquido(total_pagar, falso, verdadeiro)
		              	acrescimo = mat.arredondar(total_liquido - total_pagar, 2)
		              	forma_Ptgo = "A prazo"
		              	
					acresc_parafusos = mat.arredondar(calculaTotal_liquido(total_parafusos, falso, verdadeiro) - total_parafusos, 2)
					acresc_arruelas = mat.arredondar(calculaTotal_liquido(total_arruelas, falso, verdadeiro) - total_arruelas, 2)
					acresc_porcas = mat.arredondar(calculaTotal_liquido(total_porcas, falso, verdadeiro) - total_porcas, 2)
					acresc_brocas = mat.arredondar(calculaTotal_liquido(total_brocas, falso, verdadeiro) - total_brocas, 2)
					acresc_buchas = mat.arredondar(calculaTotal_liquido(total_buchas, falso, verdadeiro) - total_buchas, 2)
					acresc_chaves = mat.arredondar(calculaTotal_liquido(total_chaves, falso, verdadeiro) - total_chaves, 2)
		    pare		    		   
		    caso contrario:	escreva("Opção inexistente")
		}
				
		
		totalLiq_parafusos = mat.arredondar(total_parafusos - desconto_parafusos + acresc_parafusos, 2)
		totalLiq_arruelas = mat.arredondar(total_arruelas - desconto_arruelas + acresc_arruelas, 2)
		totalLiq_porcas = mat.arredondar(total_porcas - desconto_porcas + acresc_porcas, 2)
		totalLiq_brocas = mat.arredondar(total_brocas - desconto_brocas + acresc_brocas, 2)
		totalLiq_buchas = mat.arredondar(total_buchas - desconto_buchas + acresc_buchas, 2)
		totalLiq_chaves = mat.arredondar(total_chaves - desconto_chaves + acresc_chaves, 2)

		limpa()
		        
			escreva("=======================================================================================================\n")
			escreva("                                               ORÇAMENTO\n")
			escreva("=======================================================================================================\n")
			escreva("Cliente: ", nome,"                                                     ","  Validade do orçamento: ", dtValidade, " dias")
			escreva("\n=======================================================================================================\n")
			escreva("Código do produto\t Nome produto\t quant\t vl un\t vl bruto       vl desc   vl acresc\t vl líq  \n")		       
			escreva("=======================================================================================================\n")
			escreva(" 1\t\t\t ", produto_A,"\t ", qtd_parafusos, "\t ", PRECO_PARAFUSO, "\t ", total_parafusos, "\t\t", desconto_parafusos, "\t  ", acresc_parafusos, "\t\t ",totalLiq_parafusos, "\n")
	          escreva(" 2\t\t\t ", produto_B,"\t ", qtd_arruelas, "\t ", PRECO_ARRUELA, "\t ", total_arruelas, "\t\t", desconto_arruelas, "\t  ", acresc_arruelas, "\t\t ", totalLiq_arruelas, "\n")
	          escreva(" 3\t\t\t ", produto_C,"\t\t ", qtd_porcas, "\t ", PRECO_PORCA, "\t ", total_porcas, "\t\t", desconto_porcas, "\t  ", acresc_porcas, "\t\t ", totalLiq_porcas, "\n")
			escreva(" 4\t\t\t ", produto_D,"\t\t ", qtd_brocas, "\t ", PRECO_BROCA, "\t ", total_brocas, "\t\t", desconto_brocas, "\t  ", acresc_brocas, "\t\t ", totalLiq_brocas, "\n")
			escreva(" 5\t\t\t ", produto_E,"\t\t ", qtd_buchas, "\t ", PRECO_PARAFUSO, "\t ", total_buchas, "\t\t", desconto_buchas, "\t  ", acresc_buchas, "\t\t ", totalLiq_buchas, "\n")
			escreva(" 6\t\t\t ", produto_F,"\t ", qtd_chaves,"\t ",PRECO_CHAVE,"\t ",total_chaves," \t\t",desconto_chaves,"\t  ",acresc_chaves, "\t\t ",totalLiq_chaves, "\n")
			escreva("\n=======================================================================================================\n")
			escreva("Forma de Pagamento: ", forma_Ptgo, "\n\n")
			escreva("\t\t\t\t\t\t\t\t\t Total Bruto     = R$ ", total_pagar) 
			escreva("\n\t\t\t\t\t\t\t\t\t Total Desconto  = R$ ", desconto)
			escreva("\n\t\t\t\t\t\t\t\t\t Total Acréscimo = R$ ", acrescimo)
			escreva("\n\t\t\t\t\t\t\t\t\t Total Líquido   = R$ ", total_liquido)
			escreva("\n=======================================================================================================")

		
	} 
	
	funcao real calculaTotal_liquido(real pTotal_pagar, logico pDesconto, logico pAcresc)
	{	
		se (pDesconto){
		 retorne mat.arredondar(pTotal_pagar - (pTotal_pagar * DESCONTO), 2)
		}
		senao
			se (pAcresc){
				retorne mat.arredondar(pTotal_pagar + (pTotal_pagar * ACRESCIMO), 2)
			}
			senao
				retorne pTotal_pagar
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 7802; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {total_parafusos, 17, 15, 15}-{acresc_parafusos, 20, 15, 16}-{acresc_arruelas, 20, 33, 15}-{acresc_porcas, 20, 50, 13};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */