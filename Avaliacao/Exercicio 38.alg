algoritmo "Ex38"
// Função : informar se a media do aluno de acordo 
// Autor : Vinicius Luiz
// Data : 14/10/2025
// Seção de Declarações 
var
 lab, avaliacao, exame, media: real
inicio
// Seção de Comandos 
 escreval("Digite a nota do trabalho de laboratório: ")
   leia(lab)

   escreval("Digite a nota da avaliação semestral: ")
   leia(avaliacao)

   escreval("Digite a nota do exame final: ")
   leia(exame)

   media <- ((lab * 2) + (avaliacao * 3) + (exame * 5)) / 10

   escreval("A média ponderada do aluno é: ", media:0:2)
fimalgoritmo

// dira a media do aluno de acordo com suas notas na prova 
