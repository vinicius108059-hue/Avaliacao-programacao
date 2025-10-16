algoritmo "semnome"
// Função :
// Autor :
// Data : 13/10/2025
// Seção de Declarações 
var
nome : caractere
salario, novoSalario, reajuste, salarioMinimo, aumentoTotal : real
continuar : caractere
inicio
// Seção de Comandos 
  aumentoTotal <- 0

   repita
      escreval("Digite o nome do funcionário: ")
      leia(nome)

      escreval("Digite o salário do funcionário: R$ ")
      leia(salario)

      escreval("Digite o valor do salário mínimo: R$ ")
      leia(salarioMinimo)

      // Calcula o reajuste
      se (salario < 3 * salarioMinimo) entao
         reajuste <- 0.50 * salario
      senao
         se (salario >= 3 * salarioMinimo) e (salario <= 10 * salarioMinimo) entao
            reajuste <- 0.20 * salario
         senao
            se (salario > 10 * salarioMinimo) e (salario <= 20 * salarioMinimo) entao
               reajuste <- 0.15 * salario
            senao
               reajuste <- 0.10 * salario
            fimse
         fimse
      fimse

      novoSalario <- salario + reajuste
      aumentoTotal <- aumentoTotal + reajuste

      escreval()
      escreval("Funcionário: ", nome)
      escreval("Valor do reajuste: R$ ", reajuste:0:2)
      escreval("Novo salário: R$ ", novoSalario:0:2)
      escreval()

      escreval("Deseja cadastrar outro funcionário? (S/N): ")
      leia(continuar)

   ate (continuar = "N") ou (continuar = "n")

   escreval()
   escreval("Aumento total da folha de pagamento: R$ ", aumentoTotal:0:2)

fimalgoritmo
