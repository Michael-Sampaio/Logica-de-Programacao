/* 5. Um motorista deseja colocar no seu tanque X reais de gasolina. Escreva um algoritmo para ler o
preço do litro da gasolina e o valor do pagamento, e exibir quantos litros ele conseguiu colocar no
tanque.
*/

programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		real valor, precoLitro, litros

		escreva("quantos reais você deseja colocar de gasolina no tanque? ")
		leia(valor)
		escreva("qual é o preço do litro de gasolina? ")
		leia(precoLitro)

		litros = mat.arredondar((valor/precoLitro), 2)

		escreva("\nvocê abasteceu o tanque do carro com ", litros, " litros de gasolina")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 473; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */