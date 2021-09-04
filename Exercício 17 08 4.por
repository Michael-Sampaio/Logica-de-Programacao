/*8. Pedrinho tem um cofrinho com muitas moedas, e deseja saber quantos reais conseguiu
poupar. Faça um algoritmo para ler a quantidade de cada tipo de moeda, e imprimir o valor total
economizado, em reais. Considere que existam moedas de 1, 5, 10, 25 e 50 centavos, e ainda
moedas de 1 real. Não havendo moeda de um tipo, a quantidade respectiva é zero.
 */
 
 programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		const real umcentavo = 0.01, cincocentavos = 0.05, dezcentavos = 0.1, vintecincocentavos = 0.25, cinquentacentavos = 0.5
		const inteiro umreal = 1
		real moeda1, moeda5, moeda10, moeda25, moeda50, moeda1Real, total

		escreva("quantas moedas de 1 centavo haviam no cofrinho? ")
		leia(moeda1)
	
		escreva("\nquantas moedas de 5 centavos haviam no cofrinho? ")
		leia(moeda5)
	
		escreva("\nquantas moedas de 10 centavos haviam no cofrinho? ")
		leia(moeda10)
	
		escreva("\nquantas moedas de 25 centavos haviam no cofrinho? ")
		leia(moeda25)
	
		escreva("\nquantas moedas de 50 centavos haviam no cofrinho? ")
		leia(moeda50)
	
		escreva("\nquantas moedas de 1 real haviam no cofrinho? ")
		leia(moeda1Real)
	
		limpa()
		
		total = mat.arredondar((moeda1 * 0.01) + (moeda5 * 0.05) + (moeda10 * 0.1) + (moeda50 * 0.5) + (moeda1Real * 1), 2)
		escreva("\nParabéns Pedrinho! Você economizou ", total, " reais!\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 878; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */