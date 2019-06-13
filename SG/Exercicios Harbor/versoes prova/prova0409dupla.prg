// Abner Willys ALcamin Rodrigues
// Prova 4 parte 1

/******************************************************************************/

Setmode (50,86)
Set date  to british
Set epoch to 1940
Set color to w/b
clear
/******************************************************************************/
do while .t.
	cSistemaLogin := space(20)
	cSistemaSenha := space(20)

	@ 20,20 to 28,55
	@ 21,21 clear to 27,54
	@ 21,30 say ">> WYLLOW <<"
	@ 22,23 say "Login: "
	@ 23,23 say "Senha:"

	@ 22,30 get cSistemaLogin picture "@!" valid !Empty(cSistemaLogin)
	@ 23,30 get cSistemaSenha picture "@"  valid !Empty(cSistemaSenha)
	read
	if lastkey() == 27
		nRespostaSair := alert("Deseja Sair?",{"Sim","Nao"},"b/gr+")
		if nRespostaSair == 1
			exit
		endif
		loop
	endif

	if cSistemaLogin <> "SUPER" .or. cSistemaSenha <> "123mudar"
		@ 26,23 say ">> Usuario / Senha invalida!" color "w/r"
		inkey(2)
		loop
	endif
	do while .t.


		//Variaveis da Grade

		cTitulo     			:= "Wyllow Assistencia Tecnica"
		cSubTitulo1 			:= "ORDEM DE SERVICO - DADOS"
		cSubTitulo2 			:= "ORDEM DE SERVICO - PRODUTO / SERVICO"
		cSubTitulo3 			:= "ORDEM DE SERVICO - FECHAMENTO"

		cMensagemCadastro    := "> Dados cadastrados com sucesso!"
		cMensagemContinuar   := "> Pressione alguma tecla para continuar.."
		cMensagemSair        := "> Pressione alguma tecla para Finalizar.."

		/******************************************************************************/

		@ 00,00 to 49,85 double
		@ 02,01 to 02,84 double
		@ 04,01 to 04,84 double
		@ 47,01 to 47,84 double

		@ 01,01 say padc(cTitulo,83)

		//Data Sistema

		dDataAtual   := date()
		dDataSistema := dDataAtual
		cMesSistema  := ""
		cDiaSemana   := ""
		nAnoSistema  := year(dDataSistema)
		nMesSistema  := month(dDataSistema)
		nDiaSistema  := day(dDataSistema)
		nDiaSemana   := dow(dDataSistema)

		if     nMesSistema == 1
		   cMesSistema := "janeiro"
		elseif nMesSistema == 2
		   cMesSistema := "fevereiro"
		elseif nMesSistema == 3
		   cMesSistema := "marco"
		elseif nMesSistema == 4
		   cMesSistema := "abril"
		elseif nMesSistema == 5
		   cMesSistema := "maio"
		elseif nMesSistema == 6
		   cMesSistema := "junho"
		elseif nMesSistema == 7
		   cMesSistema := "julho"
		elseif nMesSistema == 8
		   cMesSistema := "agosto"
		elseif nMesSistema == 9
		   cMesSistema := "setembro"
		elseif nMesSistema == 10
		   cMesSistema := "outubro"
		elseif nMesSistema == 11
		   cMesSistema := "novembro"
		elseif nMesSistema == 12
		   cMesSistema := "dezembro"
		endif

		if 	 nDiaSemana == 1
		   cDiaSemana := "Domingo"
		elseif nDiaSemana == 2
		   cDiaSemana := "Segunda-feira"
		elseif nDiaSemana == 3
		   cDiaSemana := "Terca-feira"
		elseif nDiaSemana == 4
		   cDiaSemana := "Quarta-feira"
		elseif nDiaSemana == 5
		   cDiaSemana := "Quinta-feira"
		elseif nDiaSemana == 6
		   cDiaSemana := "Sexta-feira"
		elseif nDiaSemana == 7
		   cDiaSemana := "Sabado"
		endif

		//Data Rodape
		@ 48,23 say "Maringa, " + transform(nDiaSistema,"@E 99") + " de " + cMesSistema + " de " + transform(nAnoSistema,"@E 9999") + ".(" + cDiaSemana + ")"

		/******************************************************************************/


		nOrdemServicoContador  := 1 //Variavel antes do While para o Contador automatico
		Do while .t.
			//ORDEM DE SERVICO - DADOS
			//Variaveis ORDEM DE SERVICO - DADOS

			cOrdemServico 			  := "> Numero da Ordem de servico: "
			dOrdemServicoData 	  := date()
			cClienteNome 			  := space(50)
			cTecnicoNome 			  := space(40)
			cEquipamentoDescricao  := space(50)
			cEntregaDomicilio		  := space(1)
			nOrdemServicoLimite 	  := 0
			dEquipamentoDataCompra := cTod("")

		   @ 03,01 clear to 03,84
		   @ 05,01 clear to 46,84

		   @ 03,01 say padc(cSubTitulo1,83)

		   @ 05,02 say cOrdemServico+AllTrim(str(nOrdemServicoContador))
		   @ 06,02 say "Nome do Cliente.........:"
		   @ 07,02 say "Nome do Tecnico.........:"
		   @ 08,02 say "Descricao do Equipamento:"
		   @ 09,02 say "Data da Ordem do Servico:"
		   @ 09,37 say "Data da compra do Equip.:"
		   @ 10,02 say "Entrega Domicilio (S/N).?"
		   @ 10,37 say "Limite da OS ($)........:"

		   @ 06,27 get cClienteNome 			  picture "@!" 					valid !empty(cClienteNome)
		   @ 07,27 get cTecnicoNome 			  picture "@!" 					valid !empty(cTecnicoNome)
		   @ 08,27 get cEquipamentoDescricao  picture "@!" 					valid !empty(cEquipamentoDescricao)
		   @ 09,27 get dOrdemServicoData		  				   					valid !empty(dOrdemServicoData)
		   @ 09,62 get dEquipamentoDataCompra										valid !empty(dEquipamentoDataCompra) .and. dEquipamentoDataCompra <= dOrdemServicoData
		   @ 10,27 get cEntregaDomicilio 	  picture "@!" 					valid cEntregaDomicilio $ "SN"
		   @ 10,62 get nOrdemServicoLimite 	  picture "@e 999,999,999.99" valid nOrdemServicoLimite > 0
		   read
			if lastkey() == 27
				nRespostaSair := alert("Deseja Sair?",{"Sim","Nao"},"b/gr+")
				if nRespostaSair == 1
					exit
				endif
				loop
			endif
			nOrdemServicoContador++
			//NO CASO DE ENTREGA
			if cEntregaDomicilio == "S"
				cEntregaEndereco 	 := space(50)
				cEntregaBairro		 := space(20)
				cEntregaReferencia := space(50)
				nEntregaTelefone	 := 0
				inkey(1)
				@ 13,02 say "> Digite os Dados para a Entrega:"
				@ 15,02 say "Endereco..:"
				@ 16,02 say "Bairro....:"
				@ 16,35 say "Telefone..:"
				@ 17,02 say "Referencia:"

				@ 15,13 get cEntregaEndereco 	 picture "@!" 			  valid !Empty(cEntregaEndereco)
				@ 16,13 get cEntregaBairro	  	 picture "@!" 			  valid !Empty(cEntregaBairro)
				@ 16,46 get nEntregaTelefone 	 picture "99999999999" valid !Empty(nEntregaTelefone)
				@ 17,13 get cEntregaReferencia picture "@!"			  valid !Empty(cEntregaReferencia)
				read
				if lastkey() == 27
					nRespostaSair := alert("Deseja Sair?",{"Sim","Nao"},"b/gr+")
					if nRespostaSair == 1
						exit
					endif
					loop
				endif
				@ 19,02 say "> Sera adicionado 3% de taxa de entrega ao valor final da OS." color "w/r"
			endif

			@ 45,02 say cMensagemCadastro
		   @ 46,02 say cMensagemContinuar
		   inkey(0)

		   //Limpa a tela
		   @ 03,01 clear to 03,84
		   @ 05,01 clear to 46,84

		   //TEMPO GARANTIA
			nOrdemServicoGarantia	:= year(dOrdemServicoData) - year(dEquipamentoDataCompra)
			if month(dOrdemServicoData) < month(dEquipamentoDataCompra) .or. (month(dOrdemServicoData) == month(dEquipamentoDataCompra) .and. day(dOrdemServicoData) < day(dEquipamentoDataCompra))
		      nOrdemServicoGarantia--
		   endif

		/******************************************************************************/
			//ORDEM DE SERVICO - PRODUTO / SERVICO - tela 02
			//VARIAVEIS CONTROLE
			nLinha			  	 		:= 5
			nProdutoContador 	 		:= 1
			nServicoContador 	 		:= 1
			nOrdemServicoValor 		:= 0
			nProdutoComissaoTecnico := 0
			nServicoComissaoTecnico := 0
			nComissaoFinalTecnico	:= 0
			cSupervisorLogin 			:= space(10)
			cSupervisorSenha 			:= space(10)

			@ 45,01 to 45,84 double
			@ 03,01 say padc(cSubTitulo2,83)
			do While .t.
			   nEscolhaAssistencia := alert("Qual o tipo de Assistencia?",{"PRODUTO","SERVICO"},"b/gr+")
			   if nLinha > 33
			   	nLinha := 5
			   	@ 05,01 clear to 39,84
			   endif
			   if nEscolhaAssistencia == 1
			   	//VARIAVEIS PRODUTO
					cProdutoDescricao 			:= space(30)
					nProdutoQuantidade   		:= 0
					nProdutoPrecoUnidade 		:= 0
					nProdutoDesconto 	 			:= 0 //Em percentual
					nProdutoValorTotal   		:= 0 //Calculado (Quantidade*Precounitario)-Desconto
					nPercentualProdutoComissao	:= 0.02

					//TABELA PRODUTO
			   	@ nLinha  ,01 to nLinha+6,84
			   	@ nLinha+2,02 to nLinha+2,83 //Linha Horizontal 1
			   	@ nLinha+4,02 to nLinha+4,83 //Linha Horizontal 2
			   	@ nLinha+3,32 to nLinha+5,32 //Linha Vertical 1
					@ nLinha+3,43 to nLinha+5,43 //Linha Vertical 2
					@ nLinha+3,57 to nLinha+5,57 //Linha Vertical 3
					@ nLinha+3,68 to nLinha+5,68 //Linha Vertical 4
					@ nLinha+1,02 say padc("Produto "+alltrim(str(nProdutoContador)),82)
			   	@ nLinha+3,08 say "Descricao do Produto"
			   	@ nLinha+3,33 say "Quantidade"
			   	@ nLinha+3,45 say "$ Unitario"
			   	@ nLinha+3,58 say "% Desconto"
			   	@ nLinha+3,73 say "$ Total"

			   	@ nLinha+5,02 get cProdutoDescricao    picture "@!"					valid !Empty(cProdutoDescricao)
			   	@ nLinha+5,35 get nProdutoQuantidade   picture "999.99" 				valid nProdutoQuantidade	>  0
			   	@ nLinha+5,44 get nProdutoPrecoUnidade picture "@e 99,999,999.99" valid nProdutoPrecoUnidade >= 0
			   	@ nLinha+5,60 get nProdutoDesconto 		picture "999.99"				valid nProdutoDesconto	 	>= 0
			   	read
			   	if lastkey() == 27
						nRespostaSair := alert("Deseja Processar a Ordem de Servico?",{"Sim","Nao"},"b/gr+")
						if nRespostaSair == 1
							exit
						endif
						loop
					endif
					nProdutoValorTotal := ((nProdutoQuantidade*nProdutoPrecoUnidade)*(100-nProdutoDesconto)/100)
					@ nLinha+5,69 say Transform(nProdutoValorTotal,"@e 999,999,999.99")
					//Aplicacao da garantia
					if nOrdemServicoGarantia <= 2
						nProdutoValorTotal := 0
					endif
					nOrdemServicoValor 		+= nProdutoValorTotal
					nProdutoComissaoTecnico += (nProdutoValorTotal*nPercentualProdutoComissao)
			   	nProdutoContador++
			   	nLinha+=7
			   elseif nEscolhaAssistencia == 2
			   	//VARIAVEIS SERVICO
					cServicoDescricao 		   := space(30)
					nServicoDesconto           := 0 //Em percentual
					nPercentualServicoComissao := 0 //Em percentual
					nServicoValorInicial			:= 0 //Valor do servico sem o desconto
					nServicoValorFinal 			:= 0 //Calculado Valor do servico ja com desconto (Valor inicial-desconto)

					//TABELA SERVICO
			   	@ nLinha  ,01 to nLinha+6,84
			   	@ nLinha+2,02 to nLinha+2,83 //Linha Horizontal 1
			   	@ nLinha+4,02 to nLinha+4,83 //Linha Horizontal 2
			   	@ nLinha+3,32 to nLinha+5,32 //Linha Vertical 1
					@ nLinha+3,43 to nLinha+5,43 //Linha Vertical 2
					@ nLinha+3,57 to nLinha+5,57 //Linha Vertical 3
					@ nLinha+3,68 to nLinha+5,68 //Linha Vertical 4
					@ nLinha+1,02 say padc("Servico "+alltrim(str(nServicoContador)),82)
			   	@ nLinha+3,08 say "Descricao do Servico"
			   	@ nLinha+3,33 say "% Comissao"
			   	@ nLinha+3,45 say "$ Servico"
			   	@ nLinha+3,58 say "% Desconto"
			   	@ nLinha+3,73 say "$ Total"

			   	@ nLinha+5,02 get cServicoDescricao    		picture "@!"					valid !Empty(cServicoDescricao)
			   	@ nLinha+5,35 get nPercentualServicoComissao picture "999.99" 				valid nPercentualServicoComissao	>= 0
			   	@ nLinha+5,44 get nServicoValorInicial 		picture "@e 99,999,999.99" valid nServicoValorInicial       >= 0
			   	@ nLinha+5,60 get nServicoDesconto 				picture "999.99"				valid nServicoDesconto	 	   	>= 0
			   	read
			   	if lastkey() == 27
						nRespostaSair := alert("Deseja Processar a Ordem de Servico?",{"Sim","Nao"},"b/gr+")
						if nRespostaSair == 1
							exit
						endif
						loop
					endif
					nServicoValorFinal := nServicoValorInicial*((100-nServicoDesconto)/100)
					@ nLinha+5,69 say Transform(nServicoValorFinal,"@e 999,999,999.99")

					nServicoComissaoTecnico += (nServicoValorFinal*nPercentualServicoComissao)
					//Aplicacao da garantia
					if nOrdemServicoGarantia <= 1
						nServicoValorFinal := 0
					endif
					nOrdemServicoValor += nServicoValorFinal
			   	nServicoContador++
			   	nLinha+=7
			   else
			   	loop
			   endif
			   //Condicao do LIMITE
			   if nOrdemServicoValor > nOrdemServicoLimite
			   	do while .t.
				   	@ 41,02 say padc(">> Limite estourado, necessario autorizacao superior para continuar <<",83) color "w/r"
				   	@ 42,02 say "Para cancelar autorizacao e processar a O.S tecle ESC"
				   	@ 43,02 say "Login: "
				   	@ 44,02 say "Senha: "

				   	@ 43,09 get cSupervisorLogin picture "@!" valid cSupervisorLogin == "SUPERVISOR"
				   	@ 44,09 get cSupervisorSenha picture "@!" valid cSupervisorSenha == "LIBERAR123"
				   	read
				   	if lastkey() == 27
							nRespostaLimite := alert("Deseja Processar a Ordem de Servico?",{"Sim","Nao"},"b/gr+")
							if nRespostaLimite == 1
								if nEscolhaAssistencia == 1
									nOrdemServicoValor -= nProdutoValorTotal
								else
									nOrdemServicoValor -= nServicoValorFinal
								endif
								exit
							endif
						endif
					enddo
					if nRespostaLimite == 1
						exit
					endif
				   inkey(1)
					@ 41,02 clear to 44,84
					@ 43,02 say "Produto/Servico aceito!"
					inkey(2)
					@ 41,02 clear to 44,84
			   endif
			   Inkey(0)
			   set color to w/g
		   	@ 46,41 clear to 46,83
		   	@ 46,02 say "> Valor Total da Ordem de Servico($): "+Transform(nOrdemServicoValor,"@e 999,999,999,999.99")
		   	Set color to w/b
			   /*if nRespostaLimite == 1
			   	exit
			   endif*/
			enddo

		/******************************************************************************/
			//ORDEM DE SERVICO - FECHAMENTO - tela 03
			@ 43,02 say cMensagemCadastro
		   @ 44,02 say cMensagemContinuar
		   inkey(0)
			//Limpa a tela
		   @ 03,01 clear to 03,84
		   @ 05,01 clear to 44,84
			@ 03,01 say padc(cSubTitulo3,83)
			//Calcula Taxa Entrega
			nEntregaTaxa  := 0.03
			nEntregaValor := 0
			if cEntregaDomicilio == "S"
				nEntregaValor := nEntregaTaxa * nOrdemServicoValor
				nOrdemServicoValor += nEntregaValor
			endif
			//NOTA ou Dados para Pagamento
			if nOrdemServicoValor == 0
				nNotaCNPJ   := 0
				nNotaNumero := 0
				dNotaData   := date()
				alert("A Garantia cobre o valor TOTAL da Ordem de Servico.",,"b/gr+")
				@ 06,02 say padc(">> Digite os Dados da Nota fiscal <<",84) color "w/g"
				Inkey(1)
				@ 07,03 say "CNPJ da Empresa:"
				@ 08,03 say "Numero da Nota.:"
				@ 09,03 say "Data da Nota...:"

				@ 07,19 get nNotaCNPJ 	picture "99999999999999" valid nNotaCNPJ   > 0
				@ 08,19 get nNotaNumero picture "999999999" 	    valid nNotaNumero > 0
				@ 09,19 get dNotaData 									 valid !empty(dNotaData)
				read
				if lastkey() == 27
					nRespostaSair := alert("Deseja Sair?",{"Sim","Nao"},"b/gr+")
					if nRespostaSair == 1
						exit
					endif
					loop
				endif
				Inkey(1)
			else
				nPagamentoRestante			:= nOrdemServicoValor
				cPagamentoControle		   := ""
				nPagamentoContador         := 1
				do while .t.
					nPagamentoValorRecebido := 0
					nPagamentoValorTroco		:= 0
					cPagamentoForma 			:= space(1)

					@ 09,02 clear to 10,80
					@ 06,02 say padc(">> Dados de Pagamento <<",82) color "w/g"
					@ 07,02 say "Dinheiro [D] | Cartao [C] | Cheque [H] >> "
					@ 08,02 say "Valor restante ($):"+Transform(nPagamentoRestante,"@e 999,999,999,999.99")

					@ 07,43 get cPagamentoForma picture "@!" valid cPagamentoForma $ "DCH"
					read
					if lastkey() == 27
						nRespostaSair := alert("Deseja cancelar a O.S ?",{"Sim","Nao"},"b/gr+")
						if nRespostaSair == 1
							exit
						endif
						loop
					endif
					if cPagamentoForma $ cPagamentoControle
						@ 10,02 say "Forma de Pagamento " + cPagamentoForma + " ja escolhida!"
						loop
					endif
					@ 09,02 say "Valor recebido ($):" color "w/r"
					@ 09,21 get nPagamentoValorRecebido picture "@e 999,999,999,999.99" valid nPagamentoValorRecebido > 0
					read
					if lastkey() == 27
						nRespostaSair := alert("Deseja cancelar a O.S ?",{"Sim","Nao"},"b/gr+")
						if nRespostaSair == 1
							exit
						endif
						loop
					endif
					if nPagamentoContador == 3 .and. nPagamentoValorRecebido < nPagamentoRestante
						alert("Valor Recebido menor que o pagamento restante!",,"b/r")
						loop
					elseif nPagamentoValorRecebido >= nPagamentoRestante
						nPagamentoValorTroco := nPagamentoValorRecebido - nOrdemServicoValor
						@ 10,02 say "Valor para Troco ($):"+Transform(nPagamentoValorTroco,"@e 999,999,999.99") color "w/r"
						Inkey(1)
						exit
					else
						nPagamentoRestante := nPagamentoRestante - nPagamentoValorRecebido
					endif

					cPagamentoControle += cPagamentoForma
					nPagamentoContador++
				enddo
			endif
			if nRespostaSair == 1
				loop
			endif
			nComissaoFinalTecnico := nServicoComissaoTecnico+nProdutoComissaoTecnico
			@ 46,01 clear to 46,84
			@ 11,02 say padc(">> Ordem de Servico Finalizada <<",82) color "w/g"
			@ 13,03 say "Total de Comissao para o Tecnico Responsavel: "+Transform(nComissaoFinalTecnico,"@e 999,999,999.99") color "w/r"

			@ 43,02 say cMensagemCadastro
		   @ 44,02 say cMensagemSair
		   inkey(0)
		//@ 23,02 say "teste"

		enddo
	enddo
enddo