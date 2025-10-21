algoritmo "Ex30"
// Função :  algoritmo que receba o nome a idade, o sexo e salário fixo de um funcionário
// Autor : Vinicius Luiz
// Data : 13/10/2025
// Seção de Declarações 
var
nome, sexo : caractere
idade : inteiro
salarioFixo, salarioLiquido, abono : real
inicio
// Seção de Comandos 
 escreval("Digite o nome do funcionário: ")
   leia(nome)

   escreval("Digite a idade do funcionário: ")
   leia(idade)

   escreval("Digite o sexo do funcionário (M/F): ")
   leia(sexo)

   escreval("Digite o salário fixo do funcionário: R$ ")
   leia(salarioFixo)

   // Calcula abono conforme sexo e idade
   se (sexo = "M" ou sexo = "m") entao
      se (idade >= 30) entao
         abono <- 100
      senao
         abono <- 50
      fimse
   senao
      se (sexo = "F" ou sexo = "f") entao
         se (idade >= 30) entao
            abono <- 200
         senao
            abono <- 80
         fimse
      fimse
   fimse

   // Calcula salário líquido
   salarioLiquido <- salarioFixo + abono

   escreval()
   escreval("Nome do funcionário: ", nome)
   escreval("Salário líquido (com abono): R$ ", salarioLiquido:0:2)

// ira receber o nome a idade, o sexo e salário fixo de um funcionário e mostrara o nome e o salário total



fimalgoritmo

