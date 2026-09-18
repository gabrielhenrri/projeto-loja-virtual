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



        screva("=== BEM-VINDO À NOSSA LOJA VIRTUAL ===\n")
            escreva("---------------------------\n")
            escreva("MENU PRINCIPAL\n")
            escreva("1. Ver Produtos e Adicionar ao Carrinho (CREATE)\n")
            escreva("2. Ver Meus Itens no Carrinho (READ)\n")
            escreva("3. Alterar Quantidade no Carrinho (UPDATE)\n")
            escreva("4. Remover Item do Carrinho (DELETE)\n")
            escreva("0. Finalizar Compra e Ir ao Pagamento\n\n")
                    escreva("\nEscolha o produto que deseja adicionar: ")
                    leia(opcao_crud)

            escreva("Escolha uma opção: ")
            leia(opcao_menu_principal)
                    escreva("Digite a quantidade desejada: ")
                    leia(quantidade_temp)

            escolha (opcao_menu_principal)
            {
              
            }
                    se (opcao_crud == 1)
                    {
                        se (quantidade_temp > 0 e quantidade_temp <= estoque_prod1)
                        {
                            qtd_carrinho_prod1 = qtd_carrinho_prod1 + quantidade_temp
                            estoque_prod1 = estoque_prod1 - quantidade_temp
                            escreva("Item adicionado ao carrinho com sucesso!")
                        } senao {
                            escreva("Quantidade inválida ou acima do estoque disponível!")
          
          
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
}
