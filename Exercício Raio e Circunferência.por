programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Tipos --> tp
	inclua biblioteca Matematica --> mat
	
	const real PI = 3.14

	funcao inicio()
	{
		logico EhNumValido = verdadeiro
		real R = 0.00, C = 0.00
		cadeia sC, aguardar = "0"
	
		faca{
			escreva("Digite um número em cm: ")
			leia(sC)
			
			limpa()

			EhNumValido = tp.cadeia_e_real(sC) ou tp.cadeia_e_inteiro(sC, 10)
			
			se (EhNumValido){
				menu(sC, EhNumValido, C, R, aguardar)
			}
			senao{
				escreva("Não é um número válido")
				leia(aguardar)
				limpa()
			}
		}enquanto(nao EhNumValido)		
	}
	
	funcao menu (cadeia sC, logico EhNumValido, real C, real R, cadeia aguardar)
	{
		logico opcao = falso
		inteiro opcoes
		caracter inteiroValido
		
		faca
		{
			faca
			{
			escreva("Deseja descobrir o raio ou a circunferência do círculo? \n")

			escreva("\n1 - Raio")
			escreva("\n2 - Circunferência")
			escreva("\n3 - Ambos")
			escreva("\n4 - Sair\n\n")
			leia(inteiroValido)

			tp.caracter_e_inteiro(inteiroValido)
			limpa()
			
			}enquanto(nao tp.caracter_e_inteiro(inteiroValido))
			
			opcoes = tp.caracter_para_inteiro(inteiroValido)
			
			escolha(opcoes)
			{
				caso 1:
				limpa()
				raio(sC, EhNumValido, C, R, aguardar)
				pare
				
				caso 2:
				limpa()
				circunferencia(sC, EhNumValido, C, R, aguardar)
				pare

				caso 3:
				limpa()
				ambos(sC, EhNumValido, C, R, aguardar)
				pare

				caso 4:
				limpa()
				escreva("Finalizando programa, aguarde.\n")
				opcao = verdadeiro
				u.aguarde(200)
				pare

				caso contrario:
				limpa()
				escreva("Opção inexistente, pressione uma tecla para voltar ao menu.\n")
				leia(aguardar)
				limpa()
				pare
			}
		}enquanto (nao opcao)
	}
	
	funcao raio (cadeia sC, logico EhNumValido, real C, real R, cadeia aguardar)
	{	
		faca{
			se (EhNumValido){
				C = tp.cadeia_para_real(sC)		
				R = C / (2 * PI)
				R = mat.arredondar(R, 2)

				escreva("O raio do círculo é = ", R, "\n")
				leia(aguardar)
				limpa()
			}
		}enquanto(nao EhNumValido)		
	}
	
	funcao circunferencia (cadeia sC, logico EhNumValido, real C, real R, cadeia aguardar)
	{		
		faca{
			se (EhNumValido){
				R = tp.cadeia_para_real(sC)		
				C = 2 * PI * R
				C = mat.arredondar(C, 2)
	
				escreva("A circunferência do círulo é = ", C, "\n")
				leia(aguardar)
				limpa()
			}
		}enquanto(nao EhNumValido)
	}
	
	funcao ambos (cadeia sC, logico EhNumValido, real C, real R, cadeia aguardar)
	{
		faca{
			se (EhNumValido){
				C = tp.cadeia_para_real(sC)		
				R = C / (2 * PI)
				R = mat.arredondar(R, 2)
	
				escreva("O raio do círculo é = ", R, "cm")
			}
		}enquanto(nao EhNumValido)
		
		
		faca{
			se (EhNumValido){
				R = tp.cadeia_para_real(sC)		
				C = 2 * PI * R
				C = mat.arredondar(C, 2)
	
				escreva(", e a circunferência é = ", C, "cm.\n")
				leia(aguardar)
				limpa()
			}
		}enquanto(nao EhNumValido)
	}	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 662; 
 * @DOBRAMENTO-CODIGO = [8, 33, 92, 107, 122];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */