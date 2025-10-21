algoritmo "Ex31"
// Função :algoritmo que leia três valores inteiros distintos e os escreva em ordem crescente.
// Autor :  Vinicius Luiz
// Data : 14/10/2025
// Seção de Declarações 
var
A , B , C : real
inicio
// Seção de Comandos 

escreval("Digite um numero : ")
leia(A)

escreval("Digite um numero : ")
leia(B)

escreval("Digite um numero : ")
leia(C)

 se (A < B) e (A < C) entao
      se (B < C) entao
         escreval(A, ", ", B, ", ", C)
      senao
         escreval(A, ", ", C, ", ", B)
      fimse
   senao
      se (B < A) e (B < C) entao
         se (A < C) entao
            escreval(B, ", ", A, ", ", C)
         senao
            escreval(B, ", ", C, ", ", A)
         fimse
      senao
         se (C < A) e (C < B) entao
            se (A < B) entao
               escreval(C, ", ", A, ", ", B)
            senao
               escreval(C, ", ", B, ", ", A)
            fimse
         fimse
      fimse
   fimse


// digite 3 numeros e ele organizira de maneira de ordem crescente

fimalgoritmo

