algoritmo "semnome"
// Função : Dizer se o aluno esta aprovado ou reprovado
// Autor : Vinicius Luiz
// Data : 29/09/2025
// Seção de Declarações 
var
nota1 , nota2 , nota3 , media : real
inicio
// Seção de Comandos 

escreval("Digite a nota do aluno : " )
leia(nota1)

escreval("Digite a nota do aluno : " )
leia(nota2)

escreval("Digite a nota do aluno : " )
leia(nota3)

media <- (nota1 + nota2 + nota3) / 3
escreva("A média do aluno foi : " , media:0:2)

se (media >=7) entao
escreval(" Aluno foi aprovado ")
senao (media <=5) entao
escreval(" Aluno foi reprovado ")

fimse

//se a media do aluno for maior que 7 o aluno esta aprovado, se for menor que 5 ele esta reprovado



fimalgoritmo

