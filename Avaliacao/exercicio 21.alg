algoritmo "semnome"
// Função :
// Autor :
// Data : 13/10/2025
// Seção de Declarações 
var
 nome, sexo, saude, resp : caractere
   idade : inteiro
   totalAptos, totalPessoas : inteiro
   apto : logico
inicio
// Seção de Comandos 

 totalAptos <- 0
   totalPessoas <- 0

   repita
      escreval("Digite o nome da pessoa: ")
      leia(nome)

      escreval("Digite o sexo da pessoa (M/F): ")
      leia(sexo)

      escreval("Digite a idade da pessoa: ")
      leia(idade)

      escreval("A pessoa está com boa saúde (S/N): ")
      leia(saude)

      // Verifica se está apta (homem, 18 anos ou mais e boa saúde)
      se (sexo = "M") e (idade >= 18) e (saude = "S") entao
         apto <- verdadeiro
      senao
         apto <- falso
      fimse

      se (apto) entao
         escreval(nome, " está APTA para o serviço militar obrigatório.")
         totalAptos <- totalAptos + 1
      senao
         escreval(nome, " NÃO está apta para o serviço militar obrigatório.")
      fimse

      totalPessoas <- totalPessoas + 1

      escreval("Deseja cadastrar outra pessoa? (S/N): ")
      leia(resp)

   ate (resp = "N") ou (resp = "n")

   escreval()
   escreval("Total de pessoas aptas: ", totalAptos)
   escreval("Total de pessoas cadastradas: ", totalPessoas)
fimalgoritmo



fimalgoritmo
