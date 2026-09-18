programa {
  funcao inicio() {
     senao se (opcao_crud == 3)
                    {
                        se (quantidade_temp > 0 e quantidade_temp <= estoque_prod3)
                        {
                            qtd_carrinho_prod3 = qtd_carrinho_prod3 + quantidade_temp
                            estoque_prod3 = estoque_prod3 - quantidade_temp
                         
                            escreva("Item adicionado ao carrinho com sucesso!")
                        } senao {
                            escreva("Quantidade inválida ou acima do estoque disponível!")





                        }
  }
}
