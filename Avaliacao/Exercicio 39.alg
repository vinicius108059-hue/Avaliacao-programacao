algoritmo "semnome"
// Função :
// Autor :
// Data : 14/10/2025
// Seção de Declarações 
var
nome: caractere
   matricula: inteiro
   lab, avaliacao, exame, media: real
inicio
// Seção de Comandos 
 escreval("Digite o nome do estudante: ")
   leia(nome)

   escreval("Digite o número de matrícula: ")
   leia(matricula)

   escreval("Digite a nota do trabalho de laboratório: ")
   leia(lab)

   escreval("Digite a nota da avaliação semestral: ")
   leia(avaliacao)

   escreval("Digite a nota do exame final: ")
   leia(exame)

   // Cálculo da média ponderada
   media <- ((lab * 2) + (avaliacao * 3) + (exame * 5)) / 10

   // Exibição da média
   escreval("A média final do aluno é: ", media:0:2)

   // Classificação
   se (media >= 8) e (media <= 10) entao
      escreval("Classificação: A")
   senao
      se (media >= 7) e (media < 8) entao
         escreval("Classificação: B")
      senao
         se (media >= 6) e (media < 7) entao
            escreval("Classificação: C")
         senao
            se (media >= 5) e (media < 6) entao
               escreval("Classificação: D")
            senao
               escreval("Classificação: R (Reprovado)")
            fimse
         fimse
      fimse
   fimse

   escreval("--------------------------------------")
   escreval("Nome do estudante: ", nome)
   escreval("Matrícula: ", matricula)
   escreval("Nota final: ", media:0:2)
fimalgoritmo
