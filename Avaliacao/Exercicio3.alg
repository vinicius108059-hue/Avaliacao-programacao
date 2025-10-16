algoritmo "ex3"
// Função : determinar o consumo médio de um automóvel 
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

// linha 16 serve para mostrar que o consumo e a distancia dividido por combustivel para achar o resultado

//esse codigo serve para calcularmos consumo médio de um automóvel sendo fornecida a distância total
percorrida pelo automóvel e o total de combustível gasto.


escreva("O consumo medio do automóvel é: ", consumo:0:2, " km/l")
 senao
 escreva("Erro: Nao é possível calcular o consumo com zero litros de combustível!")
fimse
fimalgoritmo

