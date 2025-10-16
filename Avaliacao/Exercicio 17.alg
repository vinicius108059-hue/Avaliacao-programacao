algoritmo "Ex17"
// Função : ler 80 numeros e dizer se estao no intervalo de 10 a 150
// Autor :  Vinicius Luiz
// Data : 30/09/2025
// Seção de Declarações 
var
i, numero, contador: inteiro
inicio
// Seção de Comandos 
 contador <- 0

   para i de 1 ate 80 faca
      escreva("Digite o ", i, "º número: ")
      leia(numero)

      se (numero >= 10) e (numero <= 150) entao
         contador <- contador + 1
      fimse
   fimpara

   escreval("Quantidade de números no intervalo [10,150]: ", contador)


// ele deve  ler 80 numeros e dizer se estao localizados no intervalo de 10 a 150


fimalgoritmo

