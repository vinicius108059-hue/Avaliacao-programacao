algoritmo "Ex22"
// Função : algoritmo que receba o preço de custo e o preço de venda de 40 produtos.
// Autor : Vinicius Luiz
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

// algoritmo que recebe o preço de custo e o preço de venda de 40 produtos e mostrara como resultado se
houve lucro, prejuízo ou empate para cada produto e  informara a media de preço de custo e do preço de venda.


