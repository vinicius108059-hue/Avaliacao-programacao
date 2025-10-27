algoritmo "Avaliação_zé"
// Disciplina : Linguagem e Lógica de ProgramaÃ§Ã£o
// Professor  : [Nome do Professor]
// DescriÃ§Ã£o  : Sistema com menu para cadastro de produtos, vendas e relatÃ³rios
// Autor(a)   : [Seu nome]
// Data atual : 21/10/2025

var
saida, opc, indiceVenda, i, escolhaCadastro : inteiro
    totalProdutos, totalVendas : inteiro
    totalDiario : real
     resp : caracter
    // Vetores
    nomeProduto : vetor[0..99] de caractere
    qtdProduto : vetor[0..99] de inteiro
    valorProduto : vetor[0..99] de real

    nomeVenda : vetor[0..99] de caractere
    qtdVendida : vetor[0..99] de inteiro
    valorVenda : vetor[0..99] de real

inicio

    saida <- 1
    totalProdutos <- 0
    totalVendas <- 0
    totalDiario <- 0

    enquanto (saida <> 0) faca
        escreval("=== MENU ===")
        escreval("1 - CADASTRO")
        escreval("2 - VENDAS")
        escreval("3 - RELATÓRIOS")
        escreval("0 - SAIR")
        escreva("Escolha uma opção: ")
        leia(opc)
        escreval()

        escolha (opc)

            // =============================================
            //              CADASTRO DE PRODUTOS
            // =============================================
            caso 1
                escreval("=== MENU DE CADASTRO ===")
                escreval("1 - Cadastrar novo produto")
                escreval("2 - Editar produto existente")
                escreva("Escolha: ")
                leia(escolhaCadastro)
                escreval()

                escolha (escolhaCadastro)

                    // CADASTRAR NOVO PRODUTO
                    caso 1
                        escreval("=== CADASTRO DE PRODUTOS ===")
                        escreva("Nome do produto: ")
                        leia(nomeProduto[totalProdutos])
                        escreva("Quantidade: ")
                        leia(qtdProduto[totalProdutos])
                        escreva("Valor unitário: R$ ")
                        leia(valorProduto[totalProdutos])
                        escreval("Produto cadastrado com sucesso!")
                        totalProdutos <- totalProdutos + 1
                        escreval()

                    // EDITAR PRODUTO EXISTENTE
                    caso 2
                        se (totalProdutos = 0) entao
                            escreval("Nenhum produto cadastrado para editar.")
                        senao
                            escreval("=== PRODUTOS CADASTRADOS ===")
                            para i de 0 ate totalProdutos - 1 faca
                                escreval(i, " - ", nomeProduto[i], " | Qtd: ", qtdProduto[i], " | Valor: R$ ", valorProduto[i])
                            fimpara
                            escreval()
                            escreva("Digite o ID do produto que deseja editar: ")
                            leia(i)

                            se (i >= 0) e (i < totalProdutos) entao
                                escreval("Produto selecionado: ", nomeProduto[i])

                                escreval("Deseja alterar o nome? (s/n)")
                                leia(resp)
                                se (resp = "s") ou (resp = "S") entao
                                    escreva("Novo nome: ")
                                    leia(nomeProduto[i])
                                fimse

                                escreval("Deseja alterar a quantidade? (s/n)")
                                leia(resp)
                                se (resp = "s") ou (resp = "S") entao
                                    escreva("Nova quantidade: ")
                                    leia(qtdProduto[i])
                                fimse

                                escreval("Deseja alterar o valor unitário? (s/n)")
                                leia(resp)
                                se (resp = "s") ou (resp = "S") entao
                                    escreva("Novo valor unitário: R$ ")
                                    leia(valorProduto[i])
                                fimse

                                escreval("Produto atualizado com sucesso!")
                            senao
                                escreval("ID inválido!")
                            fimse
                        fimse
                fimescolha
                escreval()

            // =============================================
            //                    VENDAS
            // =============================================
            caso 2
                se (totalProdutos = 0) entao
                    escreval("Não há nenhum produto no estoque!")
                senao
                    escreval("=== REALIZAR VENDA ===")
                    para i de 0 ate totalProdutos - 1 faca
                        escreval(i, " - ", nomeProduto[i], " (Qtd: ", qtdProduto[i], ", Valor: R$ ", valorProduto[i], ")")
                    fimpara

                    escreval()
                    escreva("Digite o ID do produto: ")
                    leia(i)

                    se (i >= 0) e (i < totalProdutos) entao
                        escreva("Quantidade vendida: ")
                        leia(qtdVendida[totalVendas])

                        se (qtdVendida[totalVendas] <= qtdProduto[i]) entao
                            qtdProduto[i] <- qtdProduto[i] - qtdVendida[totalVendas]

                            nomeVenda[totalVendas] <- nomeProduto[i]
                            valorVenda[totalVendas] <- qtdVendida[totalVendas] * valorProduto[i]
                            totalDiario <- totalDiario + valorVenda[totalVendas]

                            escreval("Venda realizada com sucesso!")
                            escreval("Valor total da venda: R$ ", valorVenda[totalVendas])

                            totalVendas <- totalVendas + 1
                        senao
                            escreval("Erro: quantidade insuficiente em estoque!")
                        fimse
                    senao
                        escreval("Produto inválido!")
                    fimse
                fimse
                escreval()

            // =============================================
            //                  RELATÓRIOS
            // =============================================
            caso 3
                escreval("=== RELATÓRIOS ===")
                escreval("1 - Vendas diárias")
                escreval("2 - Estoque atual")
                escreval("3 - Produtos para reposição")
                escreva("Escolha: ")
                leia(indiceVenda)
                escreval()

                escolha (indiceVenda)
                    caso 1
                        escreval("=== RELATÓRIO DE VENDAS ===")
                        se totalVendas = 0 entao
                            escreval("Nenhuma venda registrada.")
                        senao
                            para i de 0 ate totalVendas - 1 faca
                                escreval(i + 1, " - ", nomeVenda[i], " | Valor: R$ ", valorVenda[i])
                            fimpara
                            escreval("----------------------------------")
                            escreval("TOTAL VENDIDO NO DIA: R$ ", totalDiario)
                        fimse

                    caso 2
                        escreval("=== ESTOQUE ATUAL ===")
                        se totalProdutos = 0 entao
                            escreval("Nenhum produto cadastrado.")
                        senao
                            para i de 0 ate totalProdutos - 1 faca
                                escreval(i + 1, " - ", nomeProduto[i], " | Qtd: ", qtdProduto[i], " | Valor: R$ ", valorProduto[i])
                            fimpara
                        fimse

                    caso 3
                        escreval("=== PRODUTOS PARA REPOSIÇÃO ===")
                        para i de 0 ate totalProdutos - 1 faca
                            se qtdProduto[i] < 5 entao
                                escreval(nomeProduto[i], " | Estoque baixo: ", qtdProduto[i])
                            fimse
                        fimpara
                fimescolha
                escreval()

            // =============================================
            //                      SAIR
            // =============================================
            caso 0
                escreval("Saindo do programa...")
                saida <- 0

            outrocaso
                escreval("Opção inválida! Tente novamente.")
        fimescolha
    fimenquanto



fimalgoritmo
