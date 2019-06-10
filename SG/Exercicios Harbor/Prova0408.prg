/// RENATO PEREIRA DOS SANTOS

do while .t.
   set date to british
   set epoch to 1940
   set message to 20 center
   clear

   nRespostaSair      := 0
   nOpcaoMenu         := 0
   nRespostaSairVenda := 0

   do while .t.
      @ 11,30 say "Usuario: "
      @ 13,30 say "Senha:   "

      cUsuario   := space(10)
      cSenha     := space(10)

      @ 09,28 to 15,52
      @ 11,40 get cUsuario picture "@!" valid !Empty (cUsuario)
      @ 13,40 get cSenha   picture "@"  valid !Empty (cSenha)
      read

      if lastkey() == 27
         nRespostaSair := alert("Deseja Sair do Programa?",{"Sim","Nao"})
         if nRespostaSair == 1
            clear
            exit
         else
            loop
         endif
      endif

      if cUsuario <> "SUPER" .or. cSenha <> "123mudar"
         @ 05,01 say "Usuario ou Senha Incorreta"
         inkey(0)
         clear
         loop
      else
        clear
        exit
      endif
   enddo

   if nRespostaSair == 1
      exit
   endif

   do while nOpcaoMenu <> 1
      @ 00,00 to 24,78 double
      @ 02,02 prompt "Efetuar Vendas" message "Comecar vendas"
      @ 02,18 prompt "Sair          " message "Sair do programa"
      menu to nOpcaoMenu

   if nOpcaoMenu == 2
         exit
      elseif nOpcaoMenu == 0
        loop
      endif
   enddo

   if nOpcaoMenu == 2
      exit
   endif

   nOrdemServico         := 1

   do while .t.

      nLinha                     := 9
      nRespostaCancelar          := 3
      nValorTotalServico         := 0
      nValorFinalProduto         := 0
      nValorFinalServico         := 0
      nTotalGeral                := 0
      nTotalComGarantia          := 0

      cNomeCliente               := space(50)
      dDataOrdemServico          := cTod("")
      cNomeTecnico               := space(40)
      cDescricaoEquipamento      := space(50)
      dDataCompra                := cTod("")
      cEntregaDomicilio          := space(1)

      cDescricaoProduto          := space(30)
      nQuantidadeProduto         := 0
      nPrecoUnitarioProduto      := 0
      nPercentualDescontoProduto := 0
      nValorDescontoProduto      := 0
      nValorProduto              := 0

      cDescricaoServico          := Space(30)
      nValorUnitarioServico      := 0
      nPercentualDescontoServico := 0
      nPercentualComissaoTecnico := 0
      nValorDescontoServico      := 0
      nValorTotalServico         := 0
      nValorComissaoServico      := 0

      nValorRecebido             := 0
      nContaCondicoes            := 1
      nValorFaltante             := 0
      nFormaPagamentoEscolhida1  := 0
      nFormaPagamentoEscolhida2  := 0
      nValorTroco                := 0
      cCnpjEmpresa               := space(14)
      nNumeroNotaFiscal          := 0
      dDataEmissaoNotaFiscal     := cTod("")
      dDataCompra                := cTod("")
      dDataServico               := cTod("")

      @ 00,00 to 24,78  double
      @ 00,00 to 02,78
      @ 22,00 to 24,78
      @ 01,30 say "ORDEM DE SERVICO: " + transform(nOrdemServico,"999")
      @ 03,01 say "Cliente.................: "
      @ 04,01 say "Data da Ordem de Servico: " //27
      @ 05,01 say "Nome do Tecnico.........: "
      @ 06,01 say "Descricao do Equipamento: "
      @ 07,01 say "Data da Compra..........: "
      @ 07,40 say "Entrega Domicilio: "

      @ 03,27 get cNomeCliente          picture "@!" valid !Empty(cNomeCliente)
      @ 04,27 get dDataOrdemServico                  valid !Empty(dDataOrdemServico)
      @ 05,27 get cNomeTecnico          picture "@!" valid !Empty(cNomeTecnico)
      @ 06,27 get cDescricaoEquipamento picture "@!" valid !Empty(cDescricaoEquipamento)
      @ 07,27 get dDataCompra                        valid !Empty(dDataCompra)
      @ 07,60 get cEntregaDomicilio     picture "@!" valid cEntregaDomicilio $"S/N"
      read

      if lastkey() == 27
         nRespostaSairVenda := alert("Deseja Sair da venda?",{"Sim","Nao"})
         if nRespostaSairVenda == 1
            exit
         else
            loop
         endif
      endif

      do while .t.

         cTipo                      := space(1)

         cDescricaoProduto          := space(30)
         nQuantidadeProduto         := 0
         nPrecoUnitarioProduto      := 0
         nPercentualDescontoProduto := 0
         nValorDescontoProduto      := 0
         nValorProduto              := 0

         cDescricaoServico          := Space(30)
         nValorUnitarioServico      := 0
         nPercentualDescontoServico := 0
         nPercentualComissaoTecnico := 0
         nValorDescontoServico      := 0
         nValorTotalServico         := 0

         @ nlinha ,01 get cTipo picture "@!" valid cTipo $"PS"
         read

         if cTipo == "P"
            @ nLinha,03 get cDescricaoProduto          picture "@!"          valid !Empty(cDescricaoProduto)
            @ nLinha,45 get nQuantidadeProduto         picture "999"         valid nQuantidadeProduto > 0
            @ nLinha,55 get nPrecoUnitarioProduto      picture "@E 9,999.99" valid nPrecoUnitarioProduto > 0
            @ nLinha,65 get nPercentualDescontoProduto picture "99.99"       valid nPercentualDescontoProduto > 0
            read

            nValorProduto         := nQuantidadeProduto * nPrecoUnitarioProduto
            nValorDescontoProduto := nValorProduto      * (nPercentualDescontoProduto / 100)

            dDataGarantiaProduto := dDataCompra + 730

            nTotalComGarantia := nValorProduto
            if dDataServico < dDataGarantiaProduto .and. nTotalComGarantia > 0
               nTotalComGarantia -= nValorProduto
            else
               nTotalComGarantia += nValorProduto
            endif

            @ nLinha,66 say transform(nValorProduto,"@E 9,999.99")

         elseif cTipo == "S"
            @ nLinha,03 get cDescricaoServico          picture "@!"         valid !Empty(cDescricaoServico)
            @ nLinha,45 get nPercentualDescontoServico picture "99.99"      valid nPercentualDescontoServico > 0
            @ nLinha,55 get nValorUnitarioServico      picture "9,999.99"   valid nValorUnitarioServico > 0
            @ nLinha,65 get nPercentualComissaoTecnico picture "99.99"      valid nPercentualComissaoTecnico > 0
            read

            nValorDescontoServico := nValorUnitarioServico * (nPercentualDescontoServico / 100)
            nValorTotalServico    += nValorUnitarioServico

            dDataGarantiaServico := dDataCompra + 365

            nTotalComGarantia := nValorUnitarioServico
            if dDataServico < dDataGarantiaServico .and. nTotalComGarantia > 0
               nTotalComGarantia -= nValorUnitarioServico
            else
               nTotalComGarantia     += nValorUnitarioServico
               nValorComissaoServico += nValorUnitarioServico * (nPercentualComissaoTecnico / 100)
            endif

            @ nLinha,66 say transform(nValorTotalServico,"@E 9,999.99")
         endif

         if lastkey() == 27
            nRespostaFinalizar := alert("Deseja Finalizar a Ordem de Servico?",{"Sim","Nao"})
            if nRespostaFinalizar = 1
               exit
            else
               loop
            endif
         endif

         nValorFinalProduto += nValorProduto - nValorDescontoProduto
         nValorFinalServico += nValorTotalServico - nValorDescontoServico

         nTotalGeral        += nValorFinalProduto + nValorFinalServico

         if nLinha == 20
            nLinha := 9
            @ nLinha, 01 clear to 21,78
            loop
         else
            nLinha++
         endif

         @ 23,02 say "Total com Garantia: "        + Transform(nTotalComGarantia, "@E 9,999.99")
         @ 23,40 say "Total da Ordem de Servico: " + Transform(nTotalGeral,"@E 9,999.99")

         inkey(0)

      enddo // fim parte de digitacao ========================================== //

      nRespostaFechar := alert("Fechar Pedido?",{"Sim","Nao"})
      if nRespostaFechar == 2
        nLinha := 9
        @ nLinha, 01 clear to 22,78
        loop
      else
         clear
         nTotalGeral := nTotalComGarantia
         @ 00,00 to 24,78 double
         nOrdemServico++
         @ 01,01 say "Total a pagar: " +  + Transform(nTotalGeral,"@E 9,999.99")
         if nTotalGeral == 0
            @ 03,02 say "Garantia Cobrir� o Conserto!"
            @ 05,02 say "CNPJ...................: "
            @ 07,02 say "Numero da Nota.........: "
            @ 09,02 say "Data da Emissao da Nota: "

            @ 05,26 get cCnpjEmpresa
            @ 07,26 get nNumeroNotaFiscal
            @ 09,26 get dDataEmissaoNotaFiscal
            read
         else
            nValorFaltante := nTotalGeral
            do while nContaCondicoes <= 3
               nValorRecebido := 0
               @ 03,01 say "Valor a pagar: " + transform(nValorFaltante, "@E 9,999.99")
               @ 04,01 say alltrim(str(nContaCondicoes))
               nFormaPagamento := alert("Escolha a forma de pagamento",{"Dinheiro","Cheque","Cartao"})

               if (nFormaPagamento == nFormaPagamentoEscolhida1) .or. (nFormaPagamento == nFormaPagamentoEscolhida2)
                  loop
               else
                  @ 05,01 get nValorRecebido picture "@E 9,999.99" valid nValorRecebido > 0
                  read
                  if ((nContaCondicoes == 3) .and. (nValorRecebido < nValorFaltante))
                     loop
                  elseif nValorFaltante == nValorRecebido
                     exit
                  elseif nValorRecebido > nValorFaltante
                     nValorTroco := nValorRecebido - nValorFaltante
                     @ 06,01 say "Valor do troco: " + transform(nValorTroco, "@E 9,999.99")
                     exit
                  else
                     nValorFaltante -= nValorRecebido
                  endif
               endif

               if nContaCondicoes == 1
                  nFormaPagamentoEscolhida1 := nFormaPagamento
               else
                  nFormaPagamentoEscolhida2 := nFormaPagamento
               endif

               nContaCondicoes++
               inkey(0)
            enddo

            if nValorComissaoServico > 0
               @ 08,01 say "Comissao do tecnico: " + nValorComissaoServico
            endif

         endif

         @ 10,02 say "Ordem de Servico Finalizada"
         inkey(0)
       endif

      clear
   enddo
enddo

