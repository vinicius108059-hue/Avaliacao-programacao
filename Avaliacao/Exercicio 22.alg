algoritmo "semnome"
// Função :
// Autor :
// Data : 13/10/2025
// Seção de Declarações 
var
precoCusto, precoVenda, somaCusto, somaVenda : real
i : inteiro
inicio
// Seção de Comandos


somaCusto <- 0
   somaVenda <- 0

   para i de 1 ate 40 faca
      escreval("Produto ", i)
      escreval("Digite o preço de custo: R$ ")
      leia(precoCusto)

      escreval("Digite o preço de venda: R$ ")
      leia(precoVenda)

      se (precoVenda > precoCusto) entao
         escreval("Resultado: Lucro")
      senao
         se (precoVenda < precoCusto) entao
            escreval("Resultado: Prejuízo")
         senao
            escreval("Resultado: Empate")
         fimse
      fimse


      somaCusto <- somaCusto + precoCusto
      somaVenda <- somaVenda + precoVenda

      escreval()
   fimpara

   escreval("Média do preço de custo: R$ ", (somaCusto / 40):0:2)
   escreval("Média do preço de venda: R$ ", (somaVenda / 40):0:2)
fimalgoritmo
