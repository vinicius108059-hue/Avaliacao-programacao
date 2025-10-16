algoritmo "semnome"
// Função :
// Autor : Vinicius Luiz
// Data : 14/10/2025
// Seção de Declarações 
var
A , B , C : real
inicio
// Seção de Comandos 

escreval("Digite o primeiro lado: ")
   leia(A)

   escreval("Digite o segundo lado: ")
   leia(B)

   escreval("Digite o terceiro lado: ")
   leia(C)

   se (A < B + C) e (B < A + C) e (C < A + B) entao
      escreval("Os valores formam um triângulo.")

      se (A = B) e (B = C) entao
         escreval("Tipo: Triângulo Equilátero")

      senao
         se (A = B) ou (A = C) ou (B = C) entao
            escreval("Tipo: Triângulo Isósceles")
         senao
            escreval("Tipo: Triângulo Escaleno")
         fimse
      fimse

   senao
      escreval("Os valores NÃO formam um triângulo.")
   fimse



fimalgoritmo
