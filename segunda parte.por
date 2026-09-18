programa {
  funcao inicio() {
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
                        }  
  }
}
