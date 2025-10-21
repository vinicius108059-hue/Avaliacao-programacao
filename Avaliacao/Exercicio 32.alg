algoritmo "Ex32"
// Função : calculadora de A, B e C sendo "C" um caractere
// Autor :  Vinicius Luiz
// Data : 14/10/2025
// Seção de Declarações 
var
A , B: real
C : caractere
total : real
inicio
// Seção de Comandos 

escreval("Digite um numero : ")
leia(A)

escreval("Digite um numero : ")
leia(B)

 escreval("Digite o operador (+, -, *, /): ")
   leia(C)
   
    se (C=+) entao
      total <- A + B
      escreval("Resultado: ", total)

   senao
      se (C = '-') entao
         resultado <- A - B
         escreval("Resultado: ", total)

      senao
         se (C = '*') entao
            resultado <- A * B
            escreval("Resultado: ", total)

         senao
            se (C = '/') entao
               se (B <> 0) entao
                  resultado <- A / B
                  escreval("Resultado: ", total)
               senao
                  escreval("Erro: divisão por zero não é permitida!")
               fimse
            senao
               escreval("Operador não definido!")
            fimse
         fimse
      fimse
   fimse

// Dados três valores A, B e C, em que A e B são números reais e C é um caractere, fara uma divisao e dira o resultado da operação de A por B se C for um símbolo de operador aritmético

fimalgoritmo

