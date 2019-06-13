// RENATO PEREIRA DOS SANTOS

Set date to British
Set epoch to 1940
Set message to 20 center

do while .t.
   Set color to r/n
   clear
   @ 00,00 to 24,78 double
   @ 02,02 prompt "Efetuar Vendas" message "Continuar o programa"
   @ 02,18 prompt "Sair          " message "Sair do programa"
   menu to nOpcaoMenu
   if     nOpcaoMenu == 2
      exit
   elseif nOpcaoMenu == 0
      loop
   endif
   clear
   do while .t.
      Set color to r/w
      clear
      nLinha := 11

      // DADOS DA VENDA
      cNomeCliente        := space(50)
      dDataEmissaoPedido  := cTod("")
      cNomeVendedor       := space(30)
      nPercentualComissao := 0

      // DADOS DO PRODUTO
      cCodigoProduto      := space(4)
      cDescricaoProduto   := space(20)
      nQuantidade         := 0
      nPrecoUnitario      := 0
      nPercentualDesconto := 0
      nPercentualComissao := 0
      nValorTotal         := 0
      nValorLiquido       := 0
      nValorRecebido      := 0
      nTroco              := 0
      nTotalDesconto      := 0
      nRespostaCancelar   := 1
      nContaProduto       := 0
      nValorComissao      := 0
      nQuantidadeParcelas := 0
      nContadorParcela    := 1
      nValorParcela       := 0

      @ 00,00 to 24,78 double

      @ 08,02 to 10,10
      @ 08,10 to 10,38
      @ 08,38 to 10,50
      @ 08,50 to 10,61
      @ 08,61 to 10,75

      @ 10,02 to 12,10

      @ 10,38 to 12,50
      @ 10,50 to 12,61
      @ 10,61 to 12,75
      @ 10,02 to 18,10

      @ 12,02 to 14,10
      @ 12,02 to 12,38
      @ 12,02 to 14,38
      @ 12,38 to 14,50
      @ 12,50 to 14,61
      @ 12,61 to 14,75

      @ 16,02 to 14,10
      @ 16,38 to 14,50
      @ 16,50 to 14,61
      @ 16,61 to 14,75
      @ 16,02 to 18,10
      @ 16,10 to 18,38
      @ 16,38 to 18,50
      @ 18,38 to 20,50
      @ 16,50 to 18,61
      @ 16,61 to 18,75
      @ 18,50 to 20,61
      @ 18,61 to 20,75
      @ 20,50 to 22,75
      @ 20,30 to 22,50

      @ 18,02 to 20,10
      @ 18,10 to 20,38

      @ 02,30 say "Mercado SG Sistemas"
      @ 04,02 say "Cliente: "
      @ 04,62 say "Data: " //+ dToc(dDataPedido)
      @ 06,02 say "Vendedor: "
      @ 06,55 say "% Comissao: "

      @ 09,03 say "Codigo "
      @ 09,18 say "Descricao"
      @ 09,39 say "Quantidade "
      @ 09,52 say "Preco"
      @ 09,64 say "Desconto"
      @ 21,31 say "Total: "
      @ 21,51 say "Total c/Desc: "

      @ 04,11 get cNomeCliente        picture "@!"   valid !Empty(cNomeCliente)
      @ 04,68 get dDataEmissaoPedido
      @ 06,12 get cNomeVendedor       picture "@!"   valid !Empty(cNomeVendedor)
      @ 06,67 get nPercentualComissao picture "99.9" valid nPercentualComissao >= 0
      read

      if lastkey() == 27
         nRespostaSair := alert("Deseja Voltar ao Menu inicial?",{"Sim","Nao"})
         if nRespostaSair == 1
            clear
            exit
         else
            loop
         endif
      endif

      // LISTAR PRODUTOS
      do while nContaProduto < 5

         cCodigoProduto      := space(4)
         cDescricaoProduto   := space(20)
         nQuantidade         := 0
         nPrecoUnitario      := 0
         nPercentualDesconto := 0
         nValorDesconto      := 0
         nValorProduto       := 0

         @ nLinha ,03 get cCodigoProduto      picture "@!"            valid !Empty(cCodigoProduto)
         @ nLinha ,12 get cDesCricaoProduto   picture "@!"            valid !Empty(cDescricaoProduto)
         @ nLinha ,45 get nQuantidade         picture "9999"          valid nQuantidade > 0
         @ nLinha ,51 get nPrecoUnitario      picture "@E 999,999.99" valid nPrecoUnitario > 0
         @ nLinha ,68 get nPercentualDesconto picture "999.9"         valid nPercentualDesconto >= 0
         read

         // DECISAO DA VENDA
         if lastkey() == 27
            nRespostaCancelar := alert("Deseja Cancelar a Digitacao?",{"Finalizar Venda","Cancelar a Venda","Continuar a Vender"})
            if nRespostaCancelar == 1 .or. nRespostaCancelar == 2
               exit
            elseif nRespostaCancelar == 3
               loop
            endif
         endif

         // TOTAL GERAL
         nValorProduto    := nQuantidade * nPrecoUnitario
         nValorDesconto   := (nQuantidade * nPrecoUnitario) * (nPercentualDesconto / 100)

         // TOTAL COM DESCONTO
         nValorLiquido += nValorProduto - nValorDesconto
         nValorTotal   += nValorProduto

         @ 21,43 say Alltrim(str(nValorTotal))
         @ 21,65 say Alltrim(str(nValorLiquido))

         nContaProduto++
         nLinha += 2
      enddo

      // CANCELAR VENDA
      if (nRespostaCancelar == 2)
         loop
      endif


      @ 23,02 say "Pressione qualquer tecla para Continuar"

      inkey(0)
      // FINALIZAR E MOSTRAR FORMAS DE PAGAMENTO
      clear
      @ 00,00 to 24,78 double
      @ 02,02 say "TOTAL A PAGAR: " + Transform(nValorLiquido, "@E 999,999.99")
      nFormaPagamento := alert("Escolha a forma de pagamento",{"A VISTA","A PRAZO"})
      if nFormaPagamento == 1
         @ 04,02 say "Total Recebido: "
         @ 04,19 get nValorRecebido picture "@E 999,999.99" valid nValorRecebido >= nValorLiquido
         read
         if nValorRecebido > nValorLiquido
            nTroco := nValorRecebido - nValorLiquido
            @ 06,02 say "Valor Troco: " +  alltrim(str(nTroco))
         endif
      else
         @ 04,02 say "Quantidade de Parcelas: "
         @ 04,24 get nQuantidadeParcelas picture "99" valid nQuantidadeParcelas > 0 .and. nQuantidadeParcelas <= 10
         read

         nValorParcela := nValorLiquido / nQuantidadeParcelas
         nLinha        := 10
         dDataParcela  := dDataEmissaoPedido + 30
         do while nContadorParcela <= nQuantidadeParcelas
            @ 05,01 to 21,30 double
            @ 07,02 to 07,29
            @ 09,02 to 09,29
            @ 08,08 to 20,08
            @ 08,19 to 20,19
            @ 06,03 say PadC("QUADRO DE PAGAMENTO",29)
            @ 08,03 say "Parc."
            @ 08,09 say "Vencimento"
            @ 08,22 say "Valor($)"
            @ nLinha, 02 say AllTrim(str(nContadorParcela))
            @ nLinha, 09 say dDataParcela
            @ nLinha, 20 say Transform(nValorParcela, "@E 999,999.99")
            dDataParcela += 30
            nContadorParcela++
            nLinha++
         enddo
      endif

      if nPercentualComissao > 0
         nValorComissao := nValorLiquido * (nPercentualComissao / 100)
         @ 08,32 say "Vendedor: "          + cNomeVendedor
         @ 09,32 say "Valor da Comissao: " + Transform(nValorComissao, "@E 999,999.99")
      endif

      @ 23,02 say "Pressione qualquer tecla para Continuar"
      inkey(0)
      clear
   enddo
enddo

