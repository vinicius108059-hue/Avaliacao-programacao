algoritmo "Ex24"
// Função :
// Autor :  Vinicius Luiz
// Data : 13/10/2025
// Seção de Declarações 
var
 numero, i, N : inteiro
inicio
// Seção de Comandos 

escreval("Quantos números deseja informar? ")
   leia(N)

  para i de 1 ate N faca
      escreval("Digite o número ", i, ": ")
      leia(numero)

      se (numero > 0) entao
         escreval("O número ", numero, " é POSITIVO.")
      senao
         se (numero < 0) entao
            escreval("O número ", numero, " é NEGATIVO.")
         senao
            escreval("O número ", numero, " é ZERO.")
         fimse
      fimse

      escreval() // pula linha
   fimpara
fimalgoritmo
