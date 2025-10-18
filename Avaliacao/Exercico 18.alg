algoritmo "Ex18"
// Função : Ler o nome de pessoas, informar seu genero e fazer uma contagem de pessoas masculinas e femininas
// Autor : Vinicius Luiz
// Data : 30/09/2025
// Seção de Declarações 
var
i, idade , totalM , totalH : inteiro
sexo , nome , M , H : caracter
inicio
// Seção de Comandos 

para i de 1 ate 56 faca

escreval("Digite o nome da " , i , " ª pessoa : ")
leia(nome)

escreval("Digite o genero da pessoa (H para homen , M para mulher) : ")
leia(sexo)

se(sexo= "H") ou (sexo = "h") entao
escreval(h , "é homen.")
totalH <- totalH +1

senao
se (sexo = "M") ou (sexo = "m") entao
escreval(nome, " é mulher.")
totalM <- totalM + 1

//se "H" ou "M" forem digitados dira o genero da pessoa, e no final fara uma contagem de quantos homens e mulheres foram cadastrados



escreval(" O total de homens é : " , totalH)
escreval(" O total de mulheres é : " , totalM)


         fimse
      fimse
   fimpara





fimalgoritmo

