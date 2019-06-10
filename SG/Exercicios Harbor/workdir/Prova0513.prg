// RENATO PEREIRA DOS SANTOS

clear
nNumeroPedido               := 1
nQuantidadeEstoqueProduto1  := 125
nQuantidadeEstoqueProduto2  := 119.5
nQuantidadeEstoqueProduto3  := 865
nQuantidadeEstoqueProduto4  := 200
nRespostaSair               := 0
nRespostaFechar             := 0

do while .t. // inicio programa
	set date  to british
 	set epoch to 1940
 	set message to 20 center
 	clear

 	cUsuario                    := space(20)
 	cSenha                      := space(20)
 	nCodigoProduto1             := 3500
	nCodigoProduto2             := 4501
	nCodigoProduto3             := 7001
	nCodigoProduto4             := 6002


 	@ 16,05 clear to 17,36
 	@ 09,23 to 15,58
 	@ 11,25 say "Usuario: "
 	@ 13,25 say "Senha:   "


 	@ 11,35 get cUsuario picture "@!" valid !Empty (cUsuario)
 	@ 13,35 get cSenha   picture "@!" valid !Empty (cSenha)
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

   if cUsuario <> "RENATO" .or. cSenha <> "123"
   	@ 16,25 say "Usuario ou senha Incorreta!"
   	inkey(0)
   	loop
   endif

	do while .t. // tela inicial menu
		clear
		@ 00,00 to 24,78 double
      @ 02,02 prompt "Efetuar Pedidos" message "Comecar vendas"
      @ 02,18 prompt "Sair           " message "Sair do programa"
      menu to nOpcaoMenu

      if nOpcaoMenu == 2
         exit
      elseif nOpcaoMenu == 0
        loop
      endif

		do while .t. // vendas
			clear
			@ 00,00 to 24,78 double
			@ 22,00 to 24,78

			cNomeCliente      := space(50)
			nLimiteCredito    := 0
			dDataPedido       := date()
			cDescricaoProduto := ""
			nPrecoUnitario    := 0
			nMaximoDesconto   := 0
			nLinha            := 9
			nValorTotal       := 0
			nTotalGeral       := 0

			@ 01,20 say "FRUTARIA DO RENATO - PEDIDO: " + Transform(nNumeroPedido, "999")
			@ 03,01 say "Cliente..........: " //20
			@ 05,01 say "Limite de credito: "
			@ 05,30 say "Data do Pedido: " + dToc(dDataPedido)

			@ 03,20 get cNomeCliente   picture "@!"          valid !Empty(cNomeCliente)
			@ 05,20 get nLimiteCredito picture "@E 9,999.99" valid nLimiteCredito > 0
			read

			if lastkey() == 27
     			nRespostaSair := alert("Deseja Cancelar a Digitacao do Pedido?",{"Sim","Nao"})
      		if nRespostaSair == 1
         		clear
         		exit
      		else
         		loop
      		endif
   		endif

   		@ 07,03 say "Codigo"
			@ 07,12 say "Descricao" //20
			@ 07,30 say "Preco Unit."
			@ 07,45 say "% Desconto"
			@ 07,60 say "Qtde"
			@ 07,70 say "SubTotal"

   		do while .t. // produtos
   			nCodigoProduto      			:= 0
				nQuantidadeVendida  			:= 0
				nPercentualDesconto 			:= 0
				nPercentualDescontoProduto := 0
				nPrecoUnitario             := 0
				nValorDesconto             := 0
				cDescricaoProduto          := ""
				nSubTotalProduto           := 0

				@ nLinha, 03 get nCodigoProduto    picture "9999" valid nCodigoProduto > 0
				read

				if lastkey() == 27
     				nRespostaSair := alert("Deseja Finalizar o Pedido?",{"Sim","Nao"})
	      		if nRespostaSair == 1
	      			alert("Pedido Fechado com sucesso",,)
	      			nNumeroPedido++
	         		clear
	         		exit
	      		else
	         		loop
	      		endif
   			endif

				if nCodigoProduto == 3500
					cDescricaoProduto := "Banana Prata"
					nPrecoUnitario    := 3.5
					nPercentualDescontoProduto := 18
					nQuantidadeEstoqueProduto  := nQuantidadeEstoqueProduto1
					if nQuantidadeEstoqueProduto1 == 0
						alert("Estoque do Produto Zerado",,)
						@ nLinha, 01 clear to nLinha, 77
						loop
					endif
				elseif nCodigoProduto == 4501
					cDescricaoProduto := "Pera Argentina"
					nPrecoUnitario    := 7
					nPercentualDescontoProduto := 16
					nQuantidadeEstoqueProduto  := nQuantidadeEstoqueProduto2
					if nQuantidadeEstoqueProduto2 == 0
						alert("Estoque do Produto Zerado",,)
						@ nLinha, 01 clear to nLinha, 77
						loop
					endif
				elseif nCodigoProduto == 7001
					cDescricaoProduto := "Batata Peruana"
					nPrecoUnitario    := 2
					nPercentualDescontoProduto := 9
					nQuantidadeEstoqueProduto  := nQuantidadeEstoqueProduto3
					if nQuantidadeEstoqueProduto3 == 0
						alert("Estoque do Produto Zerado",,)
						@ nLinha, 01 clear to nLinha, 77
						loop
					endif
				elseif nCodigoProduto == 6002
					cDescricaoProduto := "Abacate Negro"
					nPrecoUnitario    := 1.99
					nPercentualDescontoProduto := 3
					nQuantidadeEstoqueProduto  := nQuantidadeEstoqueProduto4
					if nQuantidadeEstoqueProduto4 == 0
						alert("Estoque do Produto Zerado",,)
						@ nLinha, 01 clear to nLinha, 77
						loop
					endif
				else
					alert("Codigo de produto inexistente",,)
					@ nLinha, 01 clear to nLinha, 77
					loop
				endif

				@ nLinha, 12 say cDescricaoProduto
				@ nlinha, 30 say alltrim(transform(nPrecoUnitario,"@E 9,999.99"))

				@ nLinha, 45 get nPercentualDesconto picture "999.99" valid nPercentualDesconto <= nPercentualDescontoProduto
				@ nLinha, 60 get nQuantidadeVendida  picture "999.99" valid nQuantidadeVendida  <= nQuantidadeEstoqueProduto
				read

				if lastkey() == 27
     			nRespostaFechar := alert("Deseja Finalizar o Pedido?",{"Sim","Nao"})
	      		if nRespostaFechar == 1
	      			alert("Pedido Fechado com sucesso",,)
	      			nNumeroPedido++
	         		clear
	         		exit
	      		else
	         		loop
	      		endif
   			endif

				nValorDesconto   := (nPrecoUnitario * nQuantidadeVendida) * (nPercentualDesconto / 100)
				nSubTotalProduto := (nPrecoUnitario * nQuantidadeVendida) - nValorDesconto

				@ nLinha, 70 say alltrim(Transform(nSubTotalProduto, "@E 9,999.99"))

				nValorTotal += nSubTotalProduto;

				if nValorTotal > nLimiteCredito
					alert("Valor ultrapassa o limite do cliente",,)
					nValorTotal -= nSubTotalProduto
					@ nLinha, 01 clear to nLinha, 77
					loop
				else
					nTotalGeral := nValorTotal
				endif

				nLinha += 2
				if nLinha == 21
					@ 09,01 clear to 21,77
					nLinha := 9
					loop
				endif

				if nCodigoProduto == 3500
					nQuantidadeEstoqueProduto1  -= nQuantidadeVendida
				elseif nCodigoProduto == 4501
					nQuantidadeEstoqueProduto2  -= nQuantidadeVendida
				elseif nCodigoProduto == 7001
					nQuantidadeEstoqueProduto3  -= nQuantidadeVendida
				elseif nCodigoProduto == 6002
					nQuantidadeEstoqueProduto4  -= nQuantidadeVendida
				endif

				//Alert( str(nQuantidadeEstoqueProduto1)+str(nQuantidadeEstoqueProduto2)+str(nQuantidadeEstoqueProduto3)+str(nQuantidadeEstoqueProduto4), )

				@ 23,40 say "Total do Pedido: " + Transform(nTotalGeral,"@E 9,999.99")
   		enddo
		enddo // fim vendas
	enddo // fim tela inicial
enddo // fim programa