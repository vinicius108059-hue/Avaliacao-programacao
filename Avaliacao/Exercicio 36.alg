algoritmo "Ex36"
// Função : calcule o valor da conta de luz de uma pesso
// Autor : Vinicius Luiz
// Data : 14/10/2025
// Seção de Declarações 
var
tipo : inteiro
consumo , valor_kw , total : real
inicio
// Seção de Comandos 
 escreval("Digite o tipo de cliente (1-Residência, 2-Comércio, 3-Indústria): ")
   leia(tipo)

   escreval("Digite o consumo em KW/h: ")
   leia(consumo)

   se (tipo = 1) entao
      valor_kw <- 0.60
   senao
      se (tipo = 2) entao
         valor_kw <- 0.48
      senao
         se (tipo = 3) entao
            valor_kw <- 1.29
         senao
            escreval("Tipo de cliente inválido!")
            pare
         fimse
      fimse
   fimse

   total <- consumo * valor_kw

   escreval("O valor total da conta de luz é: R$ ", total:0:2)
fimalgoritmo

// digite o consumo de energia em Kw e de acordo com o tipo fara a conta e informara o valor da conta
