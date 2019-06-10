// RENATO PEREIRA DOS SANTOS

do while .t.
   Set date to British
   Set epoch to 1940

   clear

   nNumeroEmpregados := 0
   nContador         := 0

   cNomeColaborador            := space(50)
   cSexoColaborador            := space(1)
   dDataNascimento             := cTod("")
   dDataAdmissao               := cTod("")
   dDataDemissao               := cTod("")
   nValorSalarioBase           := 0
   nValorLimiteIrrf            := 0
   nPercentualAdicionalNoturno := 0
   nPercentualInsalubridade    := 0
   nIdadeMaior80               := 0
   nQuantidadeFcomIrrf         := 0
   nQuantidadeFantes2003       := 0
   nReducaoIRRF                := 0
   nAdicional20052006          := 0
   nAdicional20092010          := 0
   nValorAdicionalNoturno      := 0
   nValorInsalubridade         := 0
   nTotalRemuneracao           := 0
   nRespostaCancelar           := 3
   nHomemApto                  := 0
   nMulherApta                 := 0
   nNaoApto                    := 0
   nTotalTrabalhado            := 0
   nTotalRemuneracao           := 0
   nPercentualFAposentado      := 0
   nPercentualMAposentado      := 0
   nContaAposentado            := 0

   @ 00,00 to 24,78 double

   @ 01,02 say "Digite a quantidade de Colaboradores: "

   @ 01,40 get nNumeroEmpregados picture "999" valid nNumeroEmpregados > 0
   read

   if lastkey() == 27
      nRespostaSair := alert("Deseja Sair?",{"Sim","Nao"})
      if nRespostaSair == 1
         exit
      else
         loop
      endif
   endif

   do while nContador < nNumeroEmpregados

      cNomeColaborador            := space(50)
      cSexoColaborador            := space(1)
      dDataNascimento             := cTod("")
      dDataAdmissao               := cTod("")
      dDataDemissao               := cTod("")
      nValorSalarioBase           := 0
      nValorLimiteIrrf            := 0
      nPercentualAdicionalNoturno := 0
      nPercentualInsalubridade    := 0
      nAnoAdmissao                := 0
      nAnoDemissao                := 0
      nIdadeColaborador           := 0
      nReducaoIRRF                := 0
      nAdicional20052006          := 0
      nReducao20092010            := 0
      nValorAdicionalNoturno      := 0
      nValorInsalubridade         := 0
      nDiaNascimento              := 0
      nMesNascimento              := 0
      nAnoNascimento              := 0
      nValorRemuneracao           := 0


      @ 00,00 to 24,78 double
      @ 04,02 say "Nome do Colaborador: "
      @ 06,02 say "Sexo (M/F).........: "
      @ 06,30 say "Data de Nascimento:  "
      @ 08,02 say "Data de Admissao...: "
      @ 08,32 say "Data de Demissao...: "
      @ 10,02 say "Valor Salario Base:  "
      @ 10,40 say "Valor limite IRRF..: "
      @ 12,02 say "% Adicional Noturno: "
      @ 12,32 say "% Adicional Insalunridade: "

      @ 04,23 get cNomeColaborador             picture "@!"           valid !Empty(cNomeColaborador)
      @ 06,22 get cSexoColaborador             picture "@!"           valid cSexoColaborador $"MF"
      @ 06,55 get dDataNascimento                                     valid !Empty(dDataNascimento)
      @ 08,23 get dDataAdmissao                                       valid !Empty(dDataAdmissao)
      @ 08,53 get dDataDemissao                                       valid dDataDemissao > dDataAdmissao .and. !Empty(dDataDemissao)
      @ 10,23 get nValorSalarioBase            picture "@E 999,999.9" valid nValorSalarioBase > 0
      @ 10,63 get nValorLimiteIrrf             picture "@E 999,999.9" valid nValorLimiteIrrf > 0
      @ 12,23 get nPercentualAdicionalNoturno  picture "999.9"        valid nPercentualAdicionalNoturno >= 0
      @ 12,60 get nPercentualInsalubridade     picture "999.9"        valid nPercentualInsalubridade >= 0
      read

      if lastkey() == 27
         nRespostaCancelar := alert("Deseja Cancelar a Digitacao?",{"Cancelar","Retornar","Processar"})
         if nRespostaCancelar == 1 .or. nRespostaCancelar == 3
            exit
         elseif nRespostaCancelar == 2
            loop
         endif
      endif

      nDiaNascimento := Day(dDataNascimento)
      nMesNascimento := Month(dDataNascimento)
      nAnoNascimento := Year(dDataNascimento)

      nDiaAdmissao   := Day(dDataAdmissao)
      nMesAdmissao   := Month(dDataAdmissao)

      nDiaDemissao   := Day(dDataDemissao)
      nMesDemissao   := Month(dDataDemissao)
      
      nDiaNascimento := Day(dDataNascimento)
      nMesNascimento := Month(dDataNascimento)
      nAnoNascimento := Year(dDataNascimento)

      nDiaAtual      := Day(Date())
      nMesAtual      := Month(Date())
      nAnoAtual      := Year(Date())

      nIdadeColaborador := nAnoAtual - nAnoNascimento
      if nMesNascimento >= nMesAtual .and. (nDiaNascimento > nDiaAtual .or. nDiaNascimento < nDiaAtual)
         nIdadeColaborador -= 1
      endif

      nAnoDemissao := Year(dDataDemissao)
      nAnoAdmissao := Year(dDataAdmissao)

      nTotalTrabalhado := nAnoAdmissao - nAnoDemissao    // nAnoDemissao - nAnoAtual ERREI

      nValorAdicionalNoturno := nValorSalarioBase * (nPercentualAdicionalNoturno / 100)
      nValorInsalubridade   := nValorSalarioBase * (nPercentualInsalubridade / 100)

      nValorSalarioBase     += nValorAdicionalNoturno + nValorInsalubridade

      // caso tenha trabalhado entre 2005 e 2006 
      if nAnoDemissao > 2005 .and. nAnoDemissao > 2006  // verificar nAnoDemissao >= 2005 .or. nAnoDemissao <= 2006 
         nAdicional20052006 := nValorSalarioBase * 0.08
      endif

      if nAnoDemissao > 2009 .and. nAnoDemissao > 2010 // verificar nAnoDemissao >= 2009
         nReducao20092010 := nValorSalarioBase * 0.03
      endif

      // redutor 11% para irrf > 0
      if nValorSalarioBase > nValorLimiteIrrf
         nReducaoIRRF := nValorSalarioBase * 0.11
      endif

      //idade superior a 80 anos
      if (nIdadeColaborador > 80) .and. cSexoColaborador == "M"
         nIdadeMaior80++
      endif

      // mulher admitida antes de 2003
      if nAnoAdmissao < 2003 .and. cSexoColaborador == "F"
         nQuantidadeFantes2003++
      endif

      // mulher com IRRF
      if cSexoColaborador == "F" .and. nValorSalarioBase > nValorLimiteIrrf
         nQuantidadeFcomIrrf++
      endif

      nValorRemuneracao = nValorSalarioBase + nAdicional20052006 - nReducao20092010 - nReducaoIRRF

      if nIdadeColaborador >= 65 .and. nTotalTrabalhado >= 30 .and. cSexoColaborador == "M"    // COLOQUEI ELSE IF PARA VERIFICAR MULHERES APTAS
         nHomemApto++
         cContaAposentado++
         nTotalRemuneracao += nValorSalarioBase
      endif

      if nIdadeColaborador >= 60 .and. nTotalTrabalhado >= 25 .and. cSexoColaborador == "F"
         nMulherApta++
         cContaAposentado++
         nTotalRemuneracao += nValorSalarioBase
      endif

      @ 14,02 say "Reducao irrf: "            + alltrim(str(nReducaoIRRF))
      @ 15,02 say "Adicional 2005: "          + alltrim(str(nAdicional20052006))
      @ 16,02 say "Adicional 2009: "          + alltrim(str(nReducao20092010))
      @ 17,02 say "Valor Adicional Noturno: " + alltrim(str(nValorAdicionalNoturno))
      @ 18,02 say "Valor Insalubridade "      + alltrim(str(nValorInsalubridade))
      @ 19,02 say "Remuneracao: "             + alltrim(str(nValorRemuneracao))
      @ 20,02 say "Idade Colaborador: "       + alltrim(str(nIdadeColaborador))
      @ 21,02 say "Tempo trabalhado: "        + alltrim(str(nTotalTrabalhado))
      nContador++

      @ 23,02 say "Pressione qualquer tecla para continuar"
      inkey (0)
      clear
   enddo

   if (nRespostaCancelar == 1)
      loop
   else
      clear
      nPercentualFAposentado := (nMulherApta / nContaAposentado) * 100
      nPercentualMAposentado := (nHomemApto  / nContaAposentado) * 100
      @ 02,01 say "Total Remuneracao: "                     + alltrim(str(nTotalRemuneracao))
      @ 03,01 say "Quantidade de Aposentados: "             + alltrim(str(nContaAposentado))
      @ 04,02 say "Homens Idade > 80: "                     + alltrim(str(nIdadeMaior80))
      @ 05,02 say "Quantidade de mulheres antes 2003: "     + alltrim(str(nQuantidadeFantes2003))
      @ 06,02 say "Quantidade de mulheres que pagam IRRF: " + alltrim(str(nQuantidadeFcomIrrf))
      @ 07,02 say "% de Homens aposentados: "               + alltrim(str(nPercentualMAposentado))
      @ 08,02 say "% de Mulheres aposentadas: "             + alltrim(str(nPercentualFAposentado))
   endif

    @ 09,02 say "Pressione qualquer tecla para continuar"
   inkey (0)
enddo

