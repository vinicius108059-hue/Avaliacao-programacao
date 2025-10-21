algoritmo "Ex27"
// Função : calcule e exiba o valor do desconto e o valor a ser pago pelo cliente
// Autor : Vinicius Luiz
// Data : 13/10/2025
// Seção de Declarações 
var
 valorVeiculo, desconto, valorFinal, totalDesconto, totalPago : real
  combustivel : caractere
inicio
// Seção de Comandos 
 totalDesconto <- 0
   totalPago <- 0

   repita
      escreval("Digite o valor do veículo (0 para sair): R$ ")
      leia(valorVeiculo)

      se (valorVeiculo = 0) entao
         pare
      fimse

      escreval("Digite o tipo de combustível (álcool, gasolina, diesel): ")
      leia(combustivel)

      se (combustivel = "álcool") entao
         desconto <- valorVeiculo * 0.25
      senao
         se (combustivel = "gasolina") entao
            desconto <- valorVeiculo * 0.21
         senao
            se (combustivel = "diesel") entao
               desconto <- valorVeiculo * 0.14
            senao
               escreval("Combustível inválido! Desconto será 0.")
               desconto <- 0
            fimse
         fimse
      fimse

      valorFinal <- valorVeiculo - desconto

      escreval("Desconto: R$ ", desconto:0:2)
      escreval("Valor a ser pago: R$ ", valorFinal:0:2)
      escreval() //

      totalDesconto <- totalDesconto + desconto
      totalPago <- totalPago + valorFinal

   ate (valorVeiculo = 0)

   escreval("Total de desconto concedido: R$ ", totalDesconto:0:2)
   escreval("Total pago pelos clientes: R$ ", totalPago:0:2)
fimalgoritmo


//fara o calculo exibira o valor do desconto e o valor a ser pago pelo cliente

