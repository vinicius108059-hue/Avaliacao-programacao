algoritmo "semnome"
// Função :
// Autor :
// Data : 14/10/2025
// Seção de Declarações 
var
nivel: inteiro
horas : real
valorHora, salario: real
inicio
// Seção de Comandos 

escreval("Digite o nível do professor (1, 2 ou 3): ")
leia(nivel)

escreval("Digite quantas horas/aula foram aplicadas: ")
leia(horas)

se nivel = 1 entao
   valorHora <- 12.00
senao
   se nivel = 2 entao
      valorHora <- 17.00
   senao
      se nivel = 3 entao
         valorHora <- 25.00
      senao
         escreval("Nível inválido!")
         pare // encerra o programa se o nível for inválido
      fimse
   fimse
fimse

salario <- horas * valorHora
escreval("O salário do professor é: R$ ", salario:0:2)










fimalgoritmo
