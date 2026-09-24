programa {
  funcao inicio() {
     inteiro opcao_menu_principal = -1
        inteiro opcao_crud = -1
        inteiro opcao_pagamento = -1

        cadeia tecla_pausa = ""

        real preco_prod1 = 150.0
        real preco_prod2 = 60.0
        real preco_prod3 = 250.0

        inteiro estoque_prod1 = 10
        inteiro estoque_prod2 = 15
        inteiro estoque_prod3 = 8

        inteiro qtd_carrinho_prod1 = 0
        inteiro qtd_carrinho_prod2 = 0
        inteiro qtd_carrinho_prod3 = 0

        real valor_total_bruto = 0.0
        real valor_desconto = 0.0
        real valor_final = 0.0

        real quantidade_temp = 0.0

        enquanto (opcao_menu_principal != 0)
        {
            limpa()
            escreva("=== BEM-VINDO À NOSSA LOJA VIRTUAL ===\n")
            escreva("---------------------------\n")
            escreva("MENU PRINCIPAL\n")
            escreva("1. Ver Produtos e Adicionar ao Carrinho (CREATE)\n")
            escreva("2. Ver Meus Itens no Carrinho (READ)\n")
            escreva("3. Alterar Quantidade no Carrinho (UPDATE)\n")
            escreva("4. Remover Item do Carrinho (DELETE)\n")
            escreva("0. Finalizar Compra e Ir ao Pagamento\n\n")

            escreva("Escolha uma opção: ")
            leia(opcao_menu_principal)

            escolha (opcao_menu_principal)
            {
                caso 1:
                    limpa()
                    escreva("--- CATÁLOGO DE PRODUTOS ---\n")
                    escreva("1. Camisa Esportiva (Estoque: ", estoque_prod1, ") - R$ ", preco_prod1)
                    escreva("2. Boné Casual (Estoque: ", estoque_prod2, ") - R$ ", preco_prod2)
                    escreva("3. Tênis de Corrida (Estoque: ", estoque_prod3, ") - R$ ", preco_prod3)

                    escreva("\nEscolha o produto que deseja adicionar: ")
                    leia(opcao_crud)

                    escreva("Digite a quantidade desejada: ")
                    leia(quantidade_temp)

                    se (opcao_crud == 1)
                    {
                        se (quantidade_temp > 0 e quantidade_temp <= estoque_prod1)
                        {
                            qtd_carrinho_prod1 = qtd_carrinho_prod1 + quantidade_temp
                            estoque_prod1 = estoque_prod1 - quantidade_temp
                            escreva("Item adicionado ao carrinho com sucesso!")
                        } senao {
                            escreva("Quantidade inválida ou acima do estoque disponível!")
                        }
                    }
                    senao se (opcao_crud == 2)
                    {
                        se (quantidade_temp > 0 e quantidade_temp <= estoque_prod2)
                        {
                            qtd_carrinho_prod2 = qtd_carrinho_prod2 + quantidade_temp
                            estoque_prod2 = estoque_prod2 - quantidade_temp
                            escreva("Item adicionado ao carrinho com sucesso!")
                        } senao {
                            escreva("Quantidade inválida ou acima do estoque disponível!")
                        }
                    }
                    senao se (opcao_crud == 3)
                    {
                        se (quantidade_temp > 0 e quantidade_temp <= estoque_prod3)
                        {
                            qtd_carrinho_prod3 = qtd_carrinho_prod3 + quantidade_temp
                            estoque_prod3 = estoque_prod3 - quantidade_temp
                            escreva("Item adicionado ao carrinho com sucesso!")
                        } senao {
                            escreva("Quantidade inválida ou acima do estoque disponível!")
                             }               }
                    }
                    senao {
                        escreva("Produto inválido!")
                    }
                    escreva("\nPressione ENTER para voltar ao menu...")
                    leia(tecla_pausa)
                    pare

                caso 2:
                    limpa()
                    escreva("--- MEU CARRINHO DE COMPRAS ---\n")
                    se (qtd_carrinho_prod1 == 0 e qtd_carrinho_prod2 == 0 e qtd_carrinho_prod3 == 0)
                    {
                        escreva("Seu carrinho está vazio.\n")
                    } senao
                    {
                        se (qtd_carrinho_prod1 > 0)
                        {
                            escreva("- ", qtd_carrinho_prod1, "x Camisa Esportiva (R$ ", (qtd_carrinho_prod1 * preco_prod1), ")\n")
                        }
                        se (qtd_carrinho_prod2 > 0)
                        {
                            escreva("- ", qtd_carrinho_prod2, "x Boné Casual (R$ ", (qtd_carrinho_prod2 * preco_prod2), ")\n")mn,
                        }
                        se (qtd_carrinho_prod3 > 0)
                        {
                            escreva("- ", qtd_carrinho_prod3, "x Tênis de Corrida (R$ ", (qtd_carrinho_prod3 * preco_prod3), ")\n")
                        }


                    escreva("\nPressione ENTER para voltar ao menu...")
                    leia(tecla_pausa)  
                    pare



                caso 3:
                    limpa()
                    escreva("--- ALTERAR QUANTIDADE NO CARRINHO ---\n")
                    escreva("1. Camisa Esportiva (No carrinho: ", qtd_carrinho_prod1, ")")
                    escreva("2. Boné Casual (No carrinho: ", qtd_carrinho_prod2, ")")
                    escreva("3. Tênis de Corrida (No carrinho: ", qtd_carrinho_prod3, ")")

                     XX escreva("\nEscolha o item para alterar a quantidade: ")
                    leia(opcao_crud)

                    escreva("Digite a NOVA quantidade total para este item: ")
                    leia(quantidade_temp)

                    se (opcao_crud == 1)
                    {
                        se (quantidade_temp >= 0 e quantidade_temp <= estoque_prod1)
                        {
                            estoque_prod1 = estoque_prod1 + qtd_carrinho_prod1
                            qtd_carrinho_prod1 = quantidade_temp
                            estoque_prod1 = estoque_prod1 - quantidade_temp
                            escreva("Quantidade atualizada com sucesso!")
                        } senao {
                            escreva("Quantidade inválida ou acima do estoque disponível!")
                        }
                    }
                    senao se (opcao_crud == 2)
                    {
                        se (quantidade_temp >= 0 e quantidade_temp <= estoque_prod2)
                        {
                            estoque_prod2 = estoque_prod2 + qtd_carrinho_prod2
                            qtd_carrinho_prod2 = quantidade_temp
                            estoque_prod2 = estoque_prod2 - quantidade_temp
                            escreva("Quantidade atualizada com sucesso!")
                        } senao {
                            escreva("Quantidade inválida ou acima do estoque disponível!")
                        }
                    }
                   c
                        }
                    }
                    senao {
                        escreva("Opção inválida!")
                    }

                    escreva("\nPressione ENTER para voltar ao menu...")
                    leia(tecla_pausa)
                    pare

                caso 4:
                    limpa()
                    escreva("--- REMOVER ITEM DO CARRINHO ---\n")
                    escreva("1. Camisa Esportiva (No carrinho: ", qtd_carrinho_prod1, ")")
                    escreva("2. Boné Casual (No carrinho: ", qtd_carrinho_prod2, ")")
                    escreva("3. Tênis de Corrida (No carrinho: ", qtd_carrinho_prod3, ")")

                    escreva("\nEscolha o item que deseja remover totalmente: ")
                    leia(opcao_crud)

                    se (opcao_crud == 1)
                    {
                        estoque_prod1 = estoque_prod1 + qtd_carrinho_prod1
                        qtd_carrinho_prod1 = 0
                        escreva("Camisa Esportiva removida do carrinho!")
                    }
                    senao se (opcao_crud == 2)
                    {
                        estoque_prod2 = estoque_prod2 + qtd_carrinho_prod2
                        qtd_carrinho_prod2 = 0
                        escreva("Boné Casual removido do carrinho!")
                    }
                    senao se (opcao_crud == 3)
                    {
                        estoque_prod3 = estoque_prod3 + qtd_carrinho_prod3
                        qtd_carrinho_prod3 = 0
                        escreva("Tênis de Corrida removido do carrinho!")
                    }
                    senao {
                        escreva("Opção inválida!")
                    }

                    escreva("\nPressione ENTER para voltar ao menu...")
                    leia(tecla_pausa)
                    pare
            }
        }

        // ====================== PAGAMENTO ======================
        limpa()
        escreva("--- FORMA DE PAGAMENTO ---\n")
        escreva("1. Pagamento via PIX (10% de desconto)")
        escreva("2. Cartão de Crédito (Valor normal)")

        escreva("\nEscolha a forma de pagamento: ")
        leia(opcao_pagamento)

        se (opcao_pagamento == 1)
        {
            valor_desconto = valor_total_bruto * 0.10
            valor_final = valor_total_bruto - valor_desconto
        }
        senao se (opcao_pagamento == 2)
        {
            valor_desconto = 0.0
            valor_final = valor_total_bruto
        }
        senao
        {
            escreva("Opção inválida! Processando valor normal.")
            valor_final = valor_total_bruto
        }

        // ====================== NOTA FISCAL ======================
        limpa()
        escreva("=========================\n")
        escreva("  NOTA FISCAL - LOJA VIRTUAL\n")
        escreva("=========================\n")
        escreva("Itens comprados:\n")

        se (qtd_carrinho_prod1 > 0)
        {
            escreva("- ", qtd_carrinho_prod1, "x Camisa Esportiva = R$ ", (qtd_carrinho_prod1 * preco_prod1), "\n")

  }
  se (qtd_carrinho_prod2 > 0)
 {
  escreva("- ", qtd_carrinho_prod2, "x Boné Casual = R$ ", (qtd_carrinho_prod2 * preco_prod2), "\n")
 }
  se (qtd_carrinho_prod3 > 0)
  {

  }
}
