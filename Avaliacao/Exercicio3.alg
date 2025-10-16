algoritmo "ex3"
// Função :
// Autor : Vinicius Luiz
// Data : 23/09/2025
// Seção de Declarações 
var
distancia, combustivel, consumo: real

inicio
// Seção de Comandos 
escreval("Digite a distancia total percorrida (KM): ")
leia (distancia)
escreval("Digite o total de combustivel gasto (litros): ")
leia(combustivel)
se combustivel <> 0 entao
consumo <- distancia / combustivel

escreva("O consumo medio do automóvel é: ", consumo:0:2, " km/l")
 senao
 escreva("Erro: Nao é possível calcular o consumo com zero litros de combustível!")
fimse
fimalgoritmo
