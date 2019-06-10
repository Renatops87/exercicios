Set color to "b/w"

Clear

do while .t.

   Set scoreboard off
   Set Epoch to 1940
   Set Date British



   @ 01,01 say PadC("Mario de Souza Rodrigues",78)

   @ 00,00 to 35,78
   @ 03,01 say PadC("SG Colegio de Talentos",78)
   @ 04,01 say PadC("Av. Colombo, 121, Sl.05 - Centro",78)
   @ 05,01 say PadC("Telefone: (44) 99966-2478",78)

   cNome      := Space (20)
   dDataNasc  := cTod("")
   cCurso     := Space (20)
   nSerie     := 0
   dAnoLetivo := Date()
   cBolsa     := Space (1)
   cTipoBolsa := Space (20)
   nValorMes  := 0
   nAcresmParc1:= 0
   nAcresmParc2:= 0
   nAcresmParc3:= 0
   nAcresmParc4:= 0
   nAcrescTotal :=0

   cDisciplina1 := Space(12)
   cDisciplina2 := Space(12)
   cDisciplina3 := Space(12)
   cDisciplina4 := Space(12)

   nNota1Bim    := 0
   nNota2Bim    := 0
   nNota3Bim    := 0
   nNota4Bim    := 0

   nMedia1      := 0
   nMedia2      := 0
   nMedia3      := 0
   nMedia4      := 0
   cResultado   := 0
   nMediaTotal  := 0

   nFalta1      := 0
   nFalta2      := 0
   nFalta3      := 0
   nFalta4      := 0
   nFaltas1Bim      := 0
   nFaltas2Bim      := 0
   nFaltas3Bim      := 0
   nFaltas4Bim      := 0
   nFaltaTotal  := 0


   /*
   @ 07,01 say "Digite o nome do aluno:"
   @ 08,01 say "Data de Nascimento:"
   @ 10,01 say "Curso realizado:"
   @ 11,01 say "Serie:"
   @ 12,01 say "Ano letivo:"
   @ 13,01 say "Bolsista (S/N):"
   @ 14,01 say "Integral ou Parcial:"
   @ 15,01 say "Valor da mensalidade:"

   @ 07,26 get cNome      Picture "@!"          Valid !Empty(cNome)
   @ 08,27 get dDataNasc                        Valid !Empty(dDataNasc)
   @ 10,26 get cCurso     Picture "@!"          Valid !Empty(cCurso)
   @ 11,26 get nSerie     Picture "9"           Valid !Empty(nSerie)
   @ 12,26 get dAnoLetivo
   @ 13,26 get cBolsa     Picture "@!"          Valid cBolsa $ "SN"
   @ 14,26 get cTipoBolsa Picture "@!"          Valid !Empty(cTipoBolsa)
   */
   @ 15,26 get nValorMes  Picture "@E 9,999.99" Valid nValorMes >=0
   read



   @ 18,01 say "  Disciplina |  1Bim  |  2Bim  |  3Bim  |  4Bim  |  Resultado      "
   @ 19,01 say "             | N  | F | N  | F | N  | F | N  | F |                 "
   @ 20,01 say "             |    |   |    |   |    |   |    |   |                 "
   @ 21,01 say "             |    |   |    |   |    |   |    |   |                 "
   @ 22,01 say "             |    |   |    |   |    |   |    |   |                 "
   @ 23,01 say "             |    |   |    |   |    |   |    |   |                 "
   @ 24,01 say "             |    |   |    |   |    |   |    |   |                 "

   @ 20,01 get cDisciplina1 Picture "@!"   Valid !Empty(cDisciplina1)
   @ 20,15 get nNota1Bim    Picture "999"  Valid nNota1Bim >= 0
   @ 20,20 get nFalta1      Picture "99"   Valid nFalta1   >= 0
   @ 20,24 get nNota2Bim    Picture "999"  Valid nNota2Bim >= 0
   @ 20,29 get nFalta2      Picture "99"   Valid nFalta2   >= 0
   @ 20,33 get nNota3Bim    Picture "999"  Valid nNota3Bim >= 0
   @ 20,38 get nFalta3      Picture "99"   Valid nFalta3   >= 0
   @ 20,42 get nNota4Bim    Picture "999"  Valid nNota4Bim >= 0
   @ 20,47 get nFalta4      Picture "99"   Valid nFalta4   >= 0
   read

   nMedia1 := (nNota1Bim + nNota2Bim + nNota3Bim + nNota4Bim)/4
   nFaltas1Bim := nFalta1 + nFalta2 + nFalta3 + nFalta4
   if nMedia1 >= 60 .and.nFaltas1Bim < 48
       @ 20,51 say "Aprovado em " +(cDisciplina1)
   else
      @ 20,51 say "Reprovado em " +(cDisciplina1)
      nValorMes = nAcresmParc1
   endif

   @ 21,01 get cDisciplina2 Picture "@!"  Valid !Empty(cDisciplina2)
   @ 21,15 get nNota1Bim    Picture "999" Valid nNota1Bim >= 0
   @ 21,20 get nFalta1      Picture "99"  Valid nFalta1   >= 0
   @ 21,24 get nNota2Bim    Picture "999" Valid nNota2Bim >= 0
   @ 21,29 get nFalta2      Picture "99"  Valid nFalta2   >= 0
   @ 21,33 get nNota3Bim    Picture "999" Valid nNota3Bim >= 0
   @ 21,38 get nFalta3      Picture "99"  Valid nFalta3   >= 0
   @ 21,42 get nNota4Bim    Picture "999" Valid nNota4Bim >= 0
   @ 21,47 get nFalta4      Picture "99"  Valid nFalta4   >= 0
   read

   nMedia2 := (nNota1Bim + nNota2Bim + nNota3Bim + nNota4Bim)/4
   nFaltas2Bim := nFalta1 + nFalta2 + nFalta3 + nFalta4
   if nMedia2 >= 60 .and.nFaltas2Bim < 48
      @ 21,51 say "Aprovado em " +(cDisciplina2)
   else
      @ 21,51 say "Reprovado em "+(cDisciplina2)
         nValorMes = nAcresmParc2
   endif

   @ 22,01 get cDisciplina3 Picture "@!"  Valid !Empty(cDisciplina3)
   @ 22,15 get nNota1Bim    Picture "999" Valid nNota1Bim >= 0
   @ 22,20 get nFalta1      Picture "99"  Valid nFalta1   >= 0
   @ 22,24 get nNota2Bim    Picture "999" Valid nNota2Bim >= 0
   @ 22,29 get nFalta2      Picture "99"  Valid nFalta2   >= 0
   @ 22,33 get nNota3Bim    Picture "999" Valid nNota3Bim >= 0
   @ 22,38 get nFalta3      Picture "99"  Valid nFalta3   >= 0
   @ 22,42 get nNota4Bim    Picture "999" Valid nNota4Bim >= 0
   @ 22,47 get nFalta4      Picture "99"  Valid nFalta4   >= 0
   read

   nMedia3 := (nNota1Bim + nNota2Bim + nNota3Bim + nNota4Bim)/4
   nFaltas3Bim := nFalta1 + nFalta2 + nFalta3 + nFalta4
   if nMedia3 >= 60 .and.nFaltas3Bim < 48
      @ 22,51 say "Aprovado em "+(cDisciplina3)
   else
      @ 22,51 say "Reprovado em "+(cDisciplina3)
         nValorMes = nAcresmParc3
   endif

   @ 23,01 get cDisciplina4 Picture "@!"  Valid !Empty(cDisciplina4)
   @ 23,15 get nNota1Bim    Picture "999" Valid nNota1Bim >= 0
   @ 23,20 get nFalta1      Picture "99"  Valid nFalta1   >= 0
   @ 23,24 get nNota2Bim    Picture "999" Valid nNota2Bim >= 0
   @ 23,29 get nFalta2      Picture "99"  Valid nFalta2   >= 0
   @ 23,33 get nNota3Bim    Picture "999" Valid nNota3Bim >= 0
   @ 23,38 get nFalta3      Picture "99"  Valid nFalta3   >= 0
   @ 23,42 get nNota4Bim    Picture "999" Valid nNota4Bim >= 0
   @ 23,47 get nFalta4      Picture "99"  Valid nFalta4   >= 0
   read

   nMedia4 := (nNota1Bim + nNota2Bim + nNota3Bim + nNota4Bim)/4
   nFaltas4Bim := nFalta1 + nFalta2 + nFalta3 + nFalta4
   if nMedia4 >= 60 .and.nFaltas4Bim < 48
      @ 23,51 say "Aprovado em "+(cDisciplina4)
   else
      @ 23,51 say "Reprovado em "+(cDisciplina4)
         nValorMes = nAcresmParc4
   endif


   nMediaTotal := (nMedia1 + nMedia2 + nMedia3 + nMedia4)/4
   nFaltaTotal := nFaltas1Bim + nFaltas2Bim + nFaltas3Bim + nFaltas4Bim

   @ 26,01 say "As fatas totais do aluno foi: " +Str(nFaltaTotal)


   if nMediaTotal >=60
      @ 27,01 say "A media do aluno foi: " +Str(nMediaTotal,5,2)
   else
      @ 27,01 say "A media do aluno foi: " +Str(nMediaTotal,5,2)
   endif







   if     nMediaTotal < 60 .or. nFaltaTotal > 192
      @ 28,01 say "Reprovado"
   elseif nMediaTotal < 60 .or. nFaltaTotal <= 192
      @ 28,01 say "Dependencia"
   elseif nMediaTotal > 60 .and. nFaltaTotal < 192
      @ 28,01 say "Aprovado"
   endif


   nAcresmParc = (nValorMes/10)
   nAcrescTotal = nValorMes + nAcresmParc

   if nMediaTotal <60 .or. nFaltaTotal <= 192
      if nMedia1<60 .or. nMedia2<60 .or. nMedia3<60 .or. nMedia4 <60
         @ 29,01 say "O valor da parc do prox ano ser : " +Str(nAcrescTotal)
      elseif nFaltas1Bim >= 48 .or. nFaltas2Bim >= 48 .or. nFaltas3Bim >= 48 .or. nFaltas4Bim >= 48
         @ 29,01 say "O valor da parc do prox ano ser : " +Str(nAcrescTotal)
      endif
   else
      @ 29,01 say "O valor da parc do proximo ano sera: "+Str(nValorMes)
   endif










   @ 30,01 say ""

enddo
