// RENATO PEREIRA DOS SANTOS

Set date to British
Set epoch to 1940

do while .t.
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
   @ 09,12 say "Descricao"
   @ 09,39 say "Quantidade "
   @ 09,56 say "Preco"
   @ 09,67 say "Desconto"
   @ 21,51 say "Total c/Desc: "

   @ 04,11 get cNomeCliente        picture "@!"   valid !Empty(cNomeCliente)
   @ 04,68 get dDataEmissaoPedido
   @ 06,12 get cNomeVendedor       picture "@!"   valid !Empty(cNomeVendedor)
   @ 06,67 get nPercentualComissao picture "99.9" valid nPercentualComissao > 0
   read

   if lastkey() == 27
      nRespostaSair := alert("Deseja Sair?",{"Sim","Nao"})
      if nRespostaSair == 1
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

      @ nLinha ,03 get cCodigoProduto      picture "@!"          valid !Empty(cCodigoProduto)
      @ nLinha ,12 get cDesCricaoProduto   picture "@!"          valid !Empty(cDescricaoProduto)
      @ nLinha ,45 get nQuantidade         picture "9999"        valid nQuantidade > 0
      @ nLinha ,53 get nPrecoUnitario      picture "@E 9,999.99" valid nPrecoUnitario > 0
      @ nLinha ,68 get nPercentualDesconto picture "999.9"       valid nPercentualDesconto >= 0
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
      nValorTotal += nQuantidade * nPrecoUnitario
      nTotalDesconto += nQuantidade * ((nQuantidade * nPrecoUnitario) * (nPercentualDesconto/100))

      // TOTAL COM DESCONTO
      nValorLiquido = nValorTotal - nTotalDesconto

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
   @ 02,02 say "TOTAL A PAGAR: " + alltrim(str(nValorLiquido))

   nFormaPagamento := alert("Escolha a forma de pagamento",{"A VISTA","A PRAZO"})
   
   if nFormaPagamento == 1
      @ 04,02 say "Total Recebido: "
      @ 04,19 get nValorRecebido picture "@E 9,999.99" valid nValorRecebido > 0 .and. nValorRecebido >= nValorLiquido
      read
      if nValorRecebido > nValorLiquido
         nTroco := nValorRecebido - nValorLiquido
         @ 06,02 say "Valor Troco: " +  alltrim(str(nTroco))
      endif
   endif

   nValorComissao := nValorLiquido * (nPercentualComissao / 100)
   @ 07,02 say "Vendedor: "  + cNomeVendedor
   @ 08,02 say "Valor da Comissao: " + nValorComissao

   @ 23,02 say "Pressione qualquer tecla para Continuar"
   inkey(0)
enddo

