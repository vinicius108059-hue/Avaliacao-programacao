algoritmo "Ex4"
// Função :
// Autor : Vinicius Luiz
// Data : 23/09/2025
// Seção de Declarações 
var
nome : caracter
salario : real
vendas : real
comissao : real
salariofinal : real

inicio
// Seção de Comandos
escreval ("Digite seu nome :")
leia(nome)

 escreva ("Digite o seu salario (R$) :")
 leia(salario)
 
 escreva ("Quantas vendas foram feitas (R$) :")
 leia(vendas)
 
 // calcule os valores
 
 comissao <- 0.15 * vendas
 salariofinal <- comissao + vendas
 escreval("-- Salário Final (salário + comissão): ",salarioFinal)

fimalgoritmo
