programa {
  funcao inicio() {
    
    inteiro opcao_menu_principal = -1
    inteiro opcao_crud = -1
    inteiro quantidade_temp = 0
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

    enquanto (opcao_menu_principal != 0)
    {
      limpa()
      escreva("=== BEM-VINDO À NOSSA LOJA VIRTUAL ===\n")
      escreva("------------------------------------\n")
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
      escreva("--- ADICIONAR PRODUTO AO CARRINHO ---\n")
      escreva("1. Camisa Esportiva  - R$ 150,00  (Estoque: ", estoque_prod1, ")\n")
      escreva("2. Boné Casual       - R$  60,00  (Estoque: ", estoque_prod2, ")\n")
      escreva("3. Tênis de Corrida  - R$ 250,00  (Estoque: ", estoque_prod3, ")\n")
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
        escreva("\nCamisa Esportiva adicionada com sucesso!")
      }
      senao
      {
        escreva("\nQuantidade inválida ou acima do estoque disponível!")
      }
    }
    senao se (opcao_crud == 2)
    {
      se (quantidade_temp > 0 e quantidade_temp <= estoque_prod2)
      {
        qtd_carrinho_prod2 = qtd_carrinho_prod2 + quantidade_temp
        estoque_prod2 = estoque_prod2 - quantidade_temp
        escreva("\nBoné Casual adicionado com sucesso!")
      }
      senao
{
  escreva("\nQuantidade inválida ou acima do estoque disponível!")
}
}
senao se (opcao_crud == 3)
{
se (quantidade_temp > 0 e quantidade_temp <= estoque_prod3)
{
  qtd_carrinho_prod3 = qtd_carrinho_prod3 + quantidade_temp
  estoque_prod3 = estoque_prod3 - quantidade_temp
  escreva("\nTênis de Corrida adicionado com sucesso!")
}
senao
{
  escreva("\nQuantidade inválida ou acima do estoque disponível!")
}
}
senao
{
  escreva("\nOpção de produto inválida!")
}

escreva("\n\nPressione ENTER para voltar ao menu...")
leia(tecla_pausa)
pare

caso 2:
limpa()
escreva("--- MEU CARRINHO DE COMPRAS ---\n\n")

se (qtd_carrinho_prod1 == 0 e qtd_carrinho_prod2 == 0 e qtd_carrinho_prod3 == 0)
{
  escreva("Seu carrinho está vazio.\n")
}
senao
{
  se (qtd_carrinho_prod1 > 0)
  {
    escreva("- ", qtd_carrinho_prod1, "x Camisa Esportiva (R$ ", (qtd_carrinho_prod1 * preco_prod1), ")\n")
  }
  se (qtd_carrinho_prod2 > 0)
  {
    escreva("- ", qtd_carrinho_prod2, "x Boné Casual (R$ ", (qtd_carrinho_prod2 * preco_prod2), ")\n")
  }
  se (qtd_carrinho_prod3 > 0)
  {
    escreva("- ", qtd_carrinho_prod3, "x Tênis de Corrida (R$ ", (qtd_carrinho_prod3 * preco_prod3), ")\n")
  }
}

escreva("\nPressione ENTER para voltar ao menu...")
leia(tecla_pausa)
pare

  caso 3:
    limpa()
    escreva("--- ALTERAR QUANTIDADE NO CARRINHO ---\n")
    escreva("1. Camisa Esportiva (No carrinho: ", qtd_carrinho_prod1, ")\n")
    escreva("2. Boné Casual (No carrinho: ", qtd_carrinho_prod2, ")\n")
    escreva("3. Tênis de Corrida (No carrinho: ", qtd_carrinho_prod3, ")\n")

    escreva("\nEscolha o item para alterar a quantidade: ")
leia(opcao_crud)

escreva("Digite a NOVA quantidade total para este item: ")
leia(quantidade_temp)

se (opcao_crud == 1)
{
  se (quantidade_temp >= 0 e quantidade_temp <= (estoque_prod1 + qtd_carrinho_prod1))
  {
    estoque_prod1 = estoque_prod1 + qtd_carrinho_prod1
    qtd_carrinho_prod1 = quantidade_temp
    estoque_prod1 = estoque_prod1 - quantidade_temp
    escreva("\nQuantidade atualizada com sucesso!")
  }
    senao
  {
      escreva("\nQuantidade inválida ou acima do estoque disponível!")
      }
    }
    senao se (opcao_crud == 2)
    {
    se (quantidade_temp >= 0 e quantidade_temp <= (estoque_prod2 + qtd_carrinho_prod2))
    {
      estoque_prod2 = estoque_prod2 + qtd_carrinho_prod2
      qtd_carrinho_prod2 = quantidade_temp
      estoque_prod2 = estoque_prod2 - quantidade_temp
      escreva("\nQuantidade atualizada com sucesso!")
    }
    senao
    {
      escreva("\nQuantidade inválida ou acima do estoque disponível!")
    }
  }
  senao se (opcao_crud == 3)
  {
    se (quantidade_temp >= 0 e quantidade_temp <= (estoque_prod3 + qtd_carrinho_prod3))
    {
      estoque_prod3 = estoque_prod3 + qtd_carrinho_prod3
      qtd_carrinho_prod3 = quantidade_temp
    estoque_prod3 = estoque_prod3 - quantidade_temp
    escreva("\nQuantidade atualizada com sucesso!")
  }
  senao
  {
    escreva("\nQuantidade inválida ou acima do estoque disponível!")
  }
}
senao
{
  escreva("\nOpção inválida!")
}

escreva("\n\nPressione ENTER para voltar ao menu...")
leia(tecla_pausa)
pare
caso 3:
      limpa()
      escreva("--- ALTERAR QUANTIDADE NO CARRINHO ---\n")
      escreva("1. Camisa Esportiva (No carrinho: ", qtd_carrinho_prod1, ")")
      escreva("2. Boné Casual (No carrinho: ", qtd_carrinho_prod2, ")")
      escreva("3. Tênis de Corrida (No carrinho: ", qtd_carrinho_prod3, ")")

      escreva("\nEscolha o item para alterar a quantidade: ")
      leia(opcao_crud)

      escreva("Digite a NOVA quantidade total para este item: ")
      leia(quantidade_temp)
}
}
}
}

