do while .t.
   clear
   nValorTotal     := 0
   nValorRecebido  := 0
   nContaCondicoes := 1
   nValorFaltante  := 0
   nFormaPagamentoEscolhida1 := 0
   nFormaPagamentoEscolhida2 := 0
   nValorTroco               := 0
   cCnpjEmpresa              := space(14)
   nNumeroNotaFiscal         := 0
   dDataEmissaoNotaFiscal    := cTod("") 
   dDataCompra               := cTod("")
   dDataServico              := cTod("")


   @ 00,00 to 24,78

   @ 01,01 say "Digite o total a pagar: "
   @ 01,27 get nValorTotal picture "@E 9,999.99" valid nValorTotal >= 0
   read

   if nValorTotal == 0 
      @ 03,02 say "Garantia Cobrirá o Conserto!"
      @ 05,02 say "CNPJ...................: "
      @ 07,02 say "Numero da Nota.........: "
      @ 09,02 say "Data da Emissao da Nota: "

      @ 05,26 get cCnpjEmpresa
      @ 07,26 get nNumeroNotaFiscal
      @ 09,26 get dDataEmissaoNotaFiscal
      read
   else
      nValorFaltante := nValorTotal
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
            if ((nContaCondicoes == 3) .and. (nValorRecebido < nValorFaltante)) .or. ((nFormaPagamento <> 1) .and. (nValorRecebido > nValorFaltante))
               loop
            elseif nValorFaltante == nValorRecebido
               exit
            elseif (nFormaPagamento == 1) .and. (nValorRecebido > nValorFaltante)
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
   endif
   
   @ 07,01 say "Saiu do pagamento"
   inkey(0)
enddo