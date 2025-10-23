algoritmo "Avaliação_zé"
// Disciplina : Linguagem e Lógica de ProgramaÃ§Ã£o
// Professor  : [Nome do Professor]
// DescriÃ§Ã£o  : Sistema com menu para cadastro de produtos, vendas e relatÃ³rios
// Autor(a)   : [Seu nome]
// Data atual : 21/10/2025

var
    opc, i, indiceVenda: inteiro
    saida: inteiro
    nomeProduto: vetor[0..100] de caractere
    qtdProduto: vetor[0..100] de inteiro
    valorProduto: vetor[0..100] de real

    nomeVenda: vetor[0..100] de caractere
    qtdVendida: vetor[0..100] de inteiro
    valorVenda: vetor[0..100] de real

    totalProdutos, totalVendas: inteiro
    totalDiario: real

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
                escreval("=== CADASTRO DE PRODUTOS ===")
                escreva("Nome do produto: ")
                leia(nomeProduto[totalProdutos])
                escreva("Quantidade: ")
                leia(qtdProduto[totalProdutos])
                escreva("Valor unitario: R$ ")
                leia(valorProduto[totalProdutos])
                escreval("Produto cadastrado com sucesso!")
                totalProdutos <- totalProdutos + 1
                escreval()

            // =============================================
            //                    VENDAS
            // =============================================

            caso 2
                se (totalProdutos = 0) entao
                    escreval("Nao ha nenhum produto no estoque!")
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
                        escreval("Produto invalido!")
                    fimse
                fimse
                escreval()

            // =============================================
            //                  RELATÃ“RIOS
            // =============================================

            caso 3
                escreval("=== RELATORIOS ===")
                escreval("1 - Vendas diarias")
                escreval("2 - Estoque atual")
                escreval("3 - Produtos para reposicao")
                escreva("Escolha: ")
                leia(indiceVenda)
                escreval()

                escolha (indiceVenda)
                    caso 1
                        escreval("=== RELATORIO DE VENDAS ===")
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
                        escreval("=== PRODUTOS PARA REPOSICAO ===")
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
                limpatela
                escreval("Saindo do programa...")
                saida <- 0

            // =============================================
            //                 OPÃ‡ÃƒO INVÃLIDA
            // =============================================
            
            outrocaso
                escreval("Opcao invalida! Tente novamente.")
        fimescolha
    fimenquanto

fimalgoritmo
