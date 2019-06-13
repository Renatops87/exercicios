Set date to British
Set epoch to 1940

do while .t.
   clear

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
   nValorTotal         := 0
   nValorLiquido       := 0

   @ 00,00 to 24,78 double
   @ 07,02 to 09,15
   @ 07,30 to 09,50
   @ 07,50 to 09,61
   @ 07,61 to 09,75
   @ 09,02 to 11,15
   @ 09,30 to 11,50
   @ 09,50 to 11,61
   @ 09,61 to 11,75
   @ 11,02 to 13,15
   @ 11,30 to 13,50
   @ 11,50 to 13,61
   @ 11,61 to 13,75
   @ 15,02 to 13,15
   @ 15,30 to 13,50
   @ 15,50 to 13,61
   @ 15,61 to 13,75
   @ 15,50 to 17,75

   @ 02,30 say "Mercado SG Sistemas"
   @ 04,02 say "Cliente: "
   @ 04,62 say "Data: " //+ dToc(dDataPedido)
   @ 06,02 say "Vendedor: "
   @ 06,55 say "% Comissao: "
   @ 08,03 say "Produto "
   @ 08,39 say "Quantidade "
   @ 08,56 say "Preco"
   @ 08,67 say "Subtotal"
   @ 16,03 say "Data de Entrega: "
   @ 16,51 say "Total c/Desc: "

   @ 04,11 get cNomeCliente picture "@!"          valid !Empty(cNomeCliente)
   @ 04,68 get dDataPedido
   @ 
   read

   if lastkey() == 27
      nRespostaSair := alert("Deseja Sair?",{"Sim","Nao"})
      if nRespostaSair == 1
         exit
      else
         loop
      endif
   endif

   do while .t.
      // LISTAR PRODUTOS
      do while nContaProduto < 5


      enddo
      @ 10,03 get cProdutoA    picture "@!"          valid !Empty(cProdutoA)
      @ 10,43 get nQuantidadeA picture "999.99"      valid nQuantidadeA > 0
      @ 10,53 get nPrecoA      picture "@E 9,999.99" valid nPrecoA > 0
      @ 12,03 get cProdutoB    picture "@!"          valid !Empty(cProdutoB)
      @ 12,43 get nQuantidadeB picture "999.99"      valid nQuantidadeB > 0
      @ 12,53 get nPrecoB      picture "@E 9,999.99" valid nPrecoB > 0
      @ 14,03 get cProdutoC    picture "@!"          valid !Empty(cProdutoC)
      @ 14,43 get nQuantidadeC picture "999.99"      valid nQuantidadeC > 0
      @ 14,53 get nPrecoC      picture "@E 9,999.99" valid nPrecoC > 0
      @ 16,20 get dDataEntrega valid dDataEntrega > date()
      read

      if lastkey() == 27
         nRespostaCancelar := alert("Deseja Cancelar a Digitacao?",{"Sim","Nao"})
         if nRespostaCancelar == 1
            exit
         else
            loop
         endif
      endif

      nToTalA := nQuantidadeA * nPrecoA
      @ 10,66 say "R$ " + alltrim(transform(nTotalA, "@E 999,999.99"))


      nTotalB := nQuantidadeB * nPrecoB
      @ 12,66 say "R$ " + alltrim(transform(nTotalB, "@E 999,999.99"))

      nTotalC := nQuantidadeC * nPrecoC
      @ 14,66 say "R$ " + alltrim(transform(nTotalC, "@E 999,999.99"))

      nTotalGeral := nTotalA + nTotalB + nTotalC
      @ 16,66     say "R$ " + alltrim(transform(nTotalGeral,"@E 999,999.99"))

      @ 18,03 say "Pedido Gerado"
      @ 19,03 say "Data de Emissao: " + dToc(dDataPedido)
      @ 20,03 say "Data de Entrega: " + dToc(dDataEntrega)

      inkey(0)
      exit
   enddo
enddo
