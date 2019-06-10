// Jheferson Prado, Mario S Rodrigues
Set Epoch to 1930
Set date British
Set Scoreboard off
Clear

Do while .t.
   nContadorVenda        := 0
   nValorTotal           := 0
   nTotalDesconto        := 0
   nPercetualComissao    := 0
   cNomeCliente          := Space(30)
   cNomeDoVendedor       := Space(30)
   cDescProduto          := Space(40)
   dDataVenda            := Date()

   For nContadorVenda := 1 to 999
   @ 00,00 to 23,80 Double color"w/b"
   @ 01,01 say PadC( "Sistemas de Vendas",70)
   @ 02,01 say "Nome do cliente.:"
   @ 02,59 say "n Venda: "+AllTrim(Str(nContadorVenda))
   @ 03,01 say "Nome do vendedor:"
   @ 04,01 say "Data da venda:"
   @ 04,42 say "Percentual de comissao:"

   @ 02,19 get cNomeCliente Picture"@!" Valid !Empty(cNomeCliente)
   @ 03,19 get cNomeDoVendedor Picture "@!" Valid !Empty(cNomeDoVendedor)
   @ 04,19 get dDataVenda
   @ 04,66 get nPercetualComissao Picture "999" Valid nPercetualComissao >= 0  .and. nPercetualComissao <= 100
   read

   if lastKey() == 27
      nSair := Alert("Escolha uma opcao", {"Refazer", "Sair"}, "w/b")
      if nSair == 2
         Clear
         Quit
      else
         nContadorVenda--
         loop
      endif
   endif

   lRefazer := .f.
   nLinha := 5
   do while .t.
      nContador2:= 0
      For nContador2 := 1 to 999 step 1

      cDescProduto          := Space(40)
      nValorProdutoUnitario := 0
      nDesconto             := 0
      nCodigoDoProduto      := 0
      nQuantidade           := 0

      if nLinha == 23
         nLinha := 5
         @ 05,01 clear to 22,79
      endif

      @ nLinha,01   say "Descricao:"
      @ nLinha,53   say "Codigo:"
      @ nLinha+1,01 say "Quantidade:"
      @ nLinha+1,19 say "Preco Unit.:"
      @ nLinha+1,50 say "Desconto"
      @ nLinha+2,01 say "N compra: "+ALlTRim(Str(nContador2))

      @ nLinha,12 get cDescProduto Picture"@!" Valid !Empty(cDescProduto)
      @ nLinha,59 get nCodigoDoProduto Picture "999" Valid nCodigoDoProduto >= 0
      @ nLinha+1,13 get nQuantidade Picture "999.99" Valid nQuantidade > 0
      @ nLinha+1,35 get nValorProdutoUnitario Picture "@E 999,999.99" Valid nValorProdutoUnitario > 0
      @ nLinha+1,60 get nDesconto Picture "999.99%" valid nDesconto >= 0 .and. nDesconto <= 100
      Read


      if Lastkey() == 27
         nSair := Alert("Escolha uma  opcao", {"Finalizar", "Refazer", "Continuar","Comeco" ,"Sair"})
         if nSair == 1
            exit
         elseif nSair == 2
            lRefazer := .t.
            nContador2--
            exit
         elseif nSair == 4
            clear
            exit
         elseif nSair == 5
            clear
            quit
         else
            loop
         endif
      endif

      nCalculo := nValorProdutoUnitario * nQuantidade
      nValorTotal += nCalculo
      nComDesconto := nCalculo - nDesconto * (nCalculo / 100)
      nTotalDesconto += nComDesconto

      @ 24,01 say "Total: " + AllTrim(Transform(nValorTotal, "@E 999,999.99")) + " Com desconto: " + AllTrim(Transform(nTotalDesconto , "@E 999,999.99"))

      nLinha += 2


      next

      exit
   enddo

   if lRefazer
      loop
   endif

   @ 05,01 clear to 23,80

   do while .t.
      @ 05,01 say "Desconto geral: "
      nDescontoGeral := 0
      @ 05,15 get nDescontoGeral Picture "999" Valid nDescontoGeral <= 100
      Read
      @ 05,20 say "Pressione uma tecla para continuar.."
      Inkey(0)
      @ 24,01 say "Total: " + AllTrim(Transform(nValorTotal, "@E 999,999.99")) + " Com desconto: " + AllTrim(Transform(nTotalDesconto-nDescontoGeral , "@E 999,999.99"))
      nForma := Alert("Escolha uma forma de pagamento", {"A vista", "A prazo"}, "w/b")
      if nForma == 1
         @ 06,01 say "Coloque o dinheiro:"
         nDinheiro := 0
         @ 06,22 get nDinheiro Picture "@E 9,999,999.99" Valid nDinheiro >0
         read
         If lastkey()==27
            nRetornar:= Alert("Deseja retornar a zona de pagamentos?",{"Sim","Nao"})
            if nRetornar == 1
               loop
            else
               clear
               quit
            endif
         endif

         nValorTotal -= nTotalDesconto
         if nDinheiro >= nTotalDesconto
            Alert("Compra finalizada, troco: " +AllTrim(Transform(nDinheiro-(nTotalDesconto - nDescontoGeral), "@E 9,999,999.99")), {"Ok"}, "n/g")
         else
            Alert("Dinheiro insuficiente",,"n/r")
            loop
         endif
      elseif nForma==2

         @ 06,01 say "Quantidade de parcelas: "
         @ 07,01 say "Juros mensais: "

         nJurosMensal := 0
         nQuantidadeParcelas:= 0
         @ 06,22 get nQuantidadeParcelas Picture "99" Valid nQuantidadeParcelas >0 .and. nQuantidadeParcelas <=10
         @ 07,22 get nJurosMensal Picture "999" Valid nJurosMensal <= 100
         read
         nJurosMensalValor := (nTotalDesconto*nJurosMensal)/100

         If lastkey()==27
            nRetornar:= Alert("Deseja retornar a zona de pagamentos?",{"Sim","Nao"})
            if nRetornar == 1
               loop
            else
               clear
               quit
            endif
         endif
         nValorTotal -= nTotalDesconto
         nLinha:=7
         for nContador:= 1 to nQuantidadeParcelas
            nValorParcelas := ((nTotalDesconto- nDescontoGeral)/nQuantidadeParcelas)
            @ 06,01 say "Numero   Vencimento   Valor"
            if nLinha ==22
               nLinha:=7
               @ 23,01 say "Pressione uma tecla para continuar"
               inkey(0)
               @ 07,01 clear to 22,79
            endif
            @ nLinha,01 say strzero(nContador,2) +"   "+dToc(date()+nContador*30)+"   "+Alltrim(Transform(nValorParcelas+nJurosMensalValor, "@E 999,999.99"))
            nLinha++
         next
         @ nLinha+1,01 say "Pressione uma tecla para continuar..."
         inkey(0)
      endif
       exit
   enddo
   @ 06,01 clear to 22,79
   @ 06,01 say "Nome do Vendedor: "+Alltrim(cNomeDoVendedor)
   @ 07,01 say "Comissao"+Alltrim(Str(nValorTotal - nPercetualComissao * (nValorTotal/100)))

 next
enddo

