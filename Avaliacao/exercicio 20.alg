algoritmo "Ex20"
// Função : Definir o valor de um carro com base no ano dele, dando um certo desconto 
// Autor :  Vinicius Luiz
// Data : 13/10/2025
// Seção de Declarações 
var
ano , total2000 , total : inteiro
resp : caracter
valor , desconto , valorfinal : real

inicio
// Seção de Comandos

total2000 <- 0
total <- 0

repita

escreval("Digite o ano do carro : ")
leia(ano)


escreval("Digite o valor do carro : R$ ")
leia(valor)

se (ano <= 2000) entao
 desconto <- valor 0.12
 total2000 <- total2000 + 1
 senao desconto <- valor * 0.7
fimse


valorfinal <- valor - desconto

escreval("Desconto : R$ " , desconto:0:2)
escreval("Valor a ser pago: R$ ", valorfinal:0:2)


total <- total + 1

escreval("Deseja continuar calculando desconto ? (S/N): ")
leia(resp)

ate (resp = "N") ou (resp = "n")

   escreval()
   escreval("Total de carros até o ano 2000: ", total2000)
   escreval("Total geral de carros processados: ", total)


// Definira o valor do carro com o desconto , com base e em seu ano e perguntara se voce deseja continuar calculando, caso não sera encerrado o programa









 
fimalgoritmo

