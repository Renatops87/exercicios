clear

do while .t.
	clear
	cNomeParticipante := space(30)
	nNivelDificuldade := 0
	cPalavraJogo      := "TOMATE"
	cVerificaLetra    := ""
	cAcumulaLetra     := space(30)
	cFormaPalavra     := space(30)
	nContaChances     := 0
	nTamanhoPalavra   := 0
	nProcuraLetra     := 0
	nContaLetra       := 1
	nContaErrada      := 0
	nTamanhoAcumula   := 0
	nGanhou           := 0

	@ 00,00 to 24,78 double

	@ 02,02 say "Digite seu nome: "

	@ 02,19 get cNomeParticipante picture "@!" valid !Empty(cNomeParticipante)
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

   nNivelDificuldade := alert("Escolha o nivel de dificuldade!",{"Facil","Medio","Dificil"})

	do while .t.
		cLetraDigitada  := space(1)
		cChance1        := space (30)
		cChance2        := space (30)
		cChance3        := space (30)

		@ 06,02 say "Escolha uma letra: "

		@ 06,20 get cLetraDigitada picture "@!" valid !Empty(cLetraDigitada)
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

		if cLetraDigitada $ cAcumulaLetra .and. nContaLetra > 1
   		alert("Letra Ja foi digitada",,)
   		loop
   	else
   		//cAcumulaLetra += cLetraDigitada
   		@ 05,02 say cAcumulaLetra

   		if cLetraDigitada $ cPalavraJogo // verifico se está contido
	   		cBuscaLetra     := ""
	   		cVazio          := ""
	   		nQtdCarac       := 1
	   		nProcuraLetra   := 1
	   		nContador       := 1
	   		nTamanhoPalavra := len(AllTrim(cPalavraJogo)) //tamanho da palavra
	   		do while nContador <= nTamanhoPalavra
	   			//nContador++
	   			cBuscaLetra := substr(cPalavraJogo,nContador,1) // T
	   			if cBuscaLetra == cLetraDigitada
	   			   cFormaPalavra += cBuscaLetra
	   				@ 07,nContador say cBuscaLetra //T
	   			endif
	   			nContador++
	   		enddo
	   	else
	   		nContaErrada++
	   		if nNivelDificuldade == 1
	   			if nContaErrada == 2
	   				@ 09,01 get cChance1 picture "@!" valid !Empty(cChance1)
	   				read
	   			endif
	   			if nContaErrada == 4
	   				@ 09,01 get cChance2 picture "@!" valid !Empty(cChance1)
	   				read
	   			endif
	   			if nContaErrada == 6
	   				@ 09,01 get cChance3 picture "@!" valid !Empty(cChance1)
	   				read
	   			endif
	   		endif
	   	endif
	   	nContaLetra++
	   	cAcumulaLetra += cLetraDigitada
	   	nTamanhoAcumula :=  len(AllTrim(cFormaPalavra))
	   	@ 05,02 say cAcumulaLetra
	   	if (nTamanhoAcumula == nTamanhoPalavra)
	   		Alert("GANHOU")
	   		nGanhou++
	   		exit
	   	endif
   	endif
	enddo
	if (nGanhou > 0)
		loop
	endif
enddo