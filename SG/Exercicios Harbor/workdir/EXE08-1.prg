Set date to British
Set epoch to 1940

do while .t.
   clear

   nQuantidadeA := 0
   nQuantidadeB := 0
   nQuantidadeC := 0
   nPrecoA      := 0
   nPrecoB      := 0
   nPrecoC      := 0
   cNomeCliente := space(50)
   cProdutoA    := space(20)
   cProdutoB    := space(20)
   cProdutoC    := space(20)
   dDataPedido  := cTod("")                //Date()
   dDataEntrega := cTod("")

   @ 01,01 to 22,76 double
   @ 07,02 to 09,30
   @ 07,30 to 09,50
   @ 07,50 to 09,61
   @ 07,61 to 09,75
   @ 09,02 to 11,30
   @ 09,30 to 11,50
   @ 09,50 to 11,61
   @ 09,61 to 11,75
   @ 11,02 to 13,30
   @ 11,30 to 13,50
   @ 11,50 to 13,61
   @ 11,61 to 13,75
   @ 15,02 to 13,30
   @ 15,30 to 13,50
   @ 15,50 to 13,61
   @ 15,61 to 13,75
   @ 15,50 to 17,75

   @ 02,30 say "Mercado SG Sistemas"
   @ 04,02 say "Cliente: "
   @ 04,62 say "Data: " //+ dToc(dDataPedido)
   @ 08,03 say "Produto "
   @ 08,39 say "Quantidade "
   @ 08,56 say "Preco"
   @ 08,67 say "Subtotal"
   @ 16,03 say "Data de Entrega: "
   @ 16,51 say "TOTAL GERAL:"

   @ 04,11 get cNomeCliente picture "@!"          valid !Empty(cNomeCliente)
   @ 04,68 get dDataPedido
   read

   if lastkey() == 27
      nRespostaSair := alert("Deseja Sair?",{"Sim","Nao"})
      if nRespostaSair == 1
         exit
      else
         loop
      endif
   endif

   nDiaAtual  := Day(dDataPedido)                    //day(Date())
   nAnoAtual  := Year(dDataPedido)                   //year(Date())
   nMesAtual  := Month(dDataPedido)                   //Month(Date())
   nDiaSemana := Dow(dDataPedido)                   //dow(date())

   /* Dia da semana 1-7  */

   if nDiaSemana == 1
      cDiaSemana := "Domingo"
   elseif nDiaSemana == 2
      cDiaSemana := "Segunda-Feira"
   elseif nDiaSemana == 3
      cDiaSemana := "Terca-Feira"
   elseif nDiaSemana == 4
      cDiaSemana := "Quarta-Feira"
   elseif nDiaSemana == 5
      cDiaSemana := "Quinta-Feira"
   elseif nDiaSemana == 6
      cDiaSemana := "Sexta-Feira"
   else
      cDiaSemana := "Sabado"
   endif

   /* Mes de 1 a 12 */

   if nMesAtual == 1
      cMesAtual := "Janeiro"
   elseif nMesAtual == 2
      cMesAtual := "Fevereiro"
   elseif nMesAtual == 3
      cMesAtual := "Marco"
   elseif nMesAtual == 4
      cMesAtual := "Abril"
   elseif nMesAtual == 5
      cMesAtual := "Maio"
   elseif nMesAtual == 6
      cMesAtual := "Junho"
   elseif nMesAtual == 7
      cMesAtual := "Julho"
   elseif nMesAtual == 8
      cMesAtual := "Agosto"
   elseif nMesAtual == 9
      cMesAtual := "Setembro"
   elseif nMesAtual == 10
      cMesAtual := "Outubro"
   elseif nMesAtual == 11
      cMesAtual := "Novembro"
   else
      cMesAtual := "Dezembro"
   endif

   @ 06,18 say "Maringa " + alltrim(str(nDiaAtual)) + " de " + cMesAtual + "("+;
                cDiaSemana + ")" + " de " + alltrim(str(nAnoAtual))

   do while .t.
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
