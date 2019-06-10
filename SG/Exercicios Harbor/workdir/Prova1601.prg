// RENATO PEREIRA DOS SANTOS

Set date to British
Set epoch to 1940
clear

cNomeAluno         := space(50)
cCurso             := space(50)
nSerie             := 0
nAnoLetivo         := 0
nValorMensalidade  := 0
nTotalDependencia  := 0
dDataNascimento    := cTod("")
cTipoBolsa         := space(1)

cMateriaUm         := space(15)
cMateriaDois       := space(15)
cMateriaTres       := space(15)
cMateriaQuatro     := space(15)

nNotaUmBim1        := 0
nFaltaUmBim1       := 0
nNotaDoisBim1      := 0
nFaltaDoisBim1     := 0
nNotaTresBim1      := 0
nFaltaTresBim1     := 0
nNotaQuatroBim1    := 0
nFaltaQuatroBim1   := 0
nTotalFaltaBim1    := 0
nSomaNotaBim1      := 0
nMediaBim1         := 0

nNotaUmBim2        := 0
nFaltaUmBim2       := 0
nNotaDoisBim2      := 0
nFaltaDoisBim2     := 0
nNotaTresBim2      := 0
nFaltaTresBim2     := 0
nNotaQuatroBim2    := 0
nFaltaQuatroBim2   := 0
nTotalFaltaBim2    := 0
nSomaNotaBim2      := 0
nMediaBim2         := 0

nNotaUmBim3        := 0
nFaltaUmBim3       := 0
nNotaDoisBim3      := 0
nFaltaDoisBim3     := 0
nNotaTresBim3      := 0
nFaltaTresBim3     := 0
nNotaQuatroBim3    := 0
nFaltaQuatroBim3   := 0
nTotalFaltaBim3    := 0
nSomaNotaBim3      := 0
nMediaBim3         := 0

nNotaUmBim4        := 0
nFaltaUmBim4       := 0
nNotaDoisBim4      := 0
nFaltaDoisBim4     := 0
nNotaTresBim4      := 0
nFaltaTresBim4     := 0
nNotaQuatroBim4    := 0
nFaltaQuatroBim4   := 0
nTotalFaltaBim4    := 0
nSomaNotaBim4      := 0
nMediaBim4         := 0

nTotalMensalidade           := 0
nPercentualDP               := 0.1
nPercentualDescontoIntegral := 0.98
nPercentualDescontoParcial  := 0.5
nReprovadoFalta             := 0
cAprovado                   := ""
cDependencia                := ""
cResultadoFinal             := ""
cPrimeiroVoto               := space(1)
cSegundoVoto                := space(1)
cTerceiroVoto               := space(1)
nAprovado                   := 0
nReprovadoFalta             := 0
nReprovadoFaltaMat1         := 0
nReprovadoFaltaMat2         := 0
nReprovadoFaltaMat3         := 0
nReprovadoFaltaMat4         := 0
cResultadoFinalMat1         := ""
cResultadoFinalMat2         := ""
cResultadoFinalMat3         := ""

@ 00,00 to 24,80 double
@ 01,01 say "Escola Ficticia dos Santos"
@ 02,02 say "Ensino Fundamental, medio e tecnico"

@ 04,02 say "BOLETIM ESCOLAR"
@ 06,02 say "Aluno: "
@ 08,02 say "Data de Nascimento: "
@ 08,35 say "Tipo de Bolsa: "
@ 10,02 say "Curso: "
@ 12,02 say "Serie: "
@ 12,11 say "Ano Letivo: "
@ 12,35 say "Valor da Mensalidade: "

@ 14,02 say "Disciplina "
@ 13,18 say "    1B    "
@ 14,18 say "  N  |  F  "
@ 13,28 say "    2B    "
@ 14,28 say "  N  |  F  "
@ 13,38 say "    3B    "
@ 14,38 say "  N  |  F  "
@ 13,48 say "    4B    "
@ 14,48 say "  N  |  F  "
@ 14,58 say " MEDIA "

@ 06,09 get cNomeAluno        picture "@!"
@ 08,22 get dDataNascimento
@ 08,51 get cTipoBolsa        picture "@!"
@ 10,09 get cCurso            picture "@!"
@ 12,09 get nSerie            picture "9"
@ 12,23 get nAnoLetivo        picture "9999"
@ 12,57 get nValorMensalidade picture "@E 999,999.99"

@ 15,02 get cMateriaUm        picture "@!"
@ 17,02 get cMateriaDois      picture "@!"
@ 19,02 get cMateriaTres      picture "@!"
@ 21,02 get cMateriaQuatro    picture "@!"

@ 15,18 get nNotaUmBim1       picture "99.9" valid nNotaUmBim1 > 0     .and. nNotaUmBim1 <= 10
@ 15,25 get nFaltaUmBim1      picture "99"   valid nFaltaUmBim1 > 0
@ 15,29 get nNotaDoisBim1     picture "99.9" valid nNotaUmBim1  > 0    .and. nNotaDoisBim1 <= 10
@ 15,35 get nFaltaDoisBim1    picture "99"   valid nFaltaDoisBim1 > 0
@ 15,39 get nNotaTresBim1     picture "99.9" valid nNotaUmBim1 > 0     .and. nNotaTresBim1 <= 10
@ 15,45 get nFaltaTresBim1    picture "99"   valid nFaltaTresBim1 > 0
@ 15,49 get nNotaQuatroBim1   picture "99.9" valid nNotaUmBim1 > 0     .and. nNotaQuatroBim1 <= 10
@ 15,55 get nFaltaQuatroBim1  picture "99"   valid nFaltaQuatroBim1 > 0

@ 17,18 get nNotaUmBim2       picture "99.9" valid nNotaUmBim2 > 0     .and. nNotaUmBim2 <= 10
@ 17,25 get nFaltaUmBim2      picture "99"
@ 17,29 get nNotaDoisBim2     picture "99.9" valid nNotaDoisBim2 > 0   .and. nNotaDoisBim2     <= 10
@ 17,35 get nFaltaDoisBim2    picture "99"
@ 17,39 get nNotaTresBim2     picture "99.9" valid nNotaTresBim2 > 0   .and. nNotaTresBim2 <= 10
@ 17,45 get nFaltaTresBim2    picture "99"
@ 17,49 get nNotaQuatroBim2   picture "99.9" valid nNotaQuatroBim2 > 0 .and. nNotaQuatroBim2 <= 10
@ 17,55 get nFaltaQuatroBim2  picture "99"

@ 19,18 get nNotaUmBim3       picture "99.9" valid nNotaUmBim3     > 0 .and. nNotaUmBim3     <= 10
@ 19,25 get nFaltaUmBim3      picture "99"
@ 19,29 get nNotaDoisBim3     picture "99.9" valid nNotaDoisBim3   > 0 .and. nNotaDoisBim3   <= 10
@ 19,35 get nFaltaDoisBim3    picture "99"
@ 19,39 get nNotaTresBim3     picture "99.9" valid nNotaTresBim3   > 0 .and. nNotaTresBim3   <= 10
@ 19,45 get nFaltaTresBim3    picture "99"
@ 19,49 get nNotaQuatroBim3   picture "99.9" valid nNotaQuatroBim3 > 0 .and. nNotaQuatroBim3 <= 10
@ 19,55 get nFaltaQuatroBim3  picture "99"

@ 21,18 get nNotaUmBim4       picture "99.9" valid nNotaUmBim4 > 0     .and. nNotaUmBim4    <= 10
@ 21,25 get nFaltaUmBim4      picture "99"
@ 21,29 get nNotaDoisBim4     picture "99.9" valid nNotaDoisBim4 > 0   .and. nNotaDoisBim4  <= 10
@ 21,35 get nFaltaDoisBim4    picture "99"
@ 21,39 get nNotaTresBim4     picture "99.9" valid nNotaTresBim4 > 0   .and. nNotaTresBim4  <= 10
@ 21,45 get nFaltaTresBim4    picture "99"
@ 21,49 get nNotaQuatroBim4   picture "99.9" valid nNotaQuatroBim4 > 0 .and. nNotaQuatroBim4 <= 10
@ 21,55 get nFaltaQuatroBim4  picture "99"
read

nSomaNotaBim1   := nNotaUmBim1  + nNotaDoisBim1  + nNotaTresBim1  + nNotaQuatroBim1
nTotalFaltaBim1 := nFaltaUmBim1 + nFaltaDoisBim1 + nFaltaTresBim1 + nFaltaQuatroBim1
nMediaBim1      := nSomaNotaBim1 / 4

nSomaNotaBim2   := nNotaUmBim2  + nNotaDoisBim2  + nNotaTresBim2  + nNotaQuatroBim2
nTotalFaltaBim2 := nFaltaUmBim2 + nFaltaDoisBim2 + nFaltaTresBim2 + nFaltaQuatroBim2
nMediaBim2      := nSomaNotaBim2 / 4

nSomaNotaBim3   := nNotaUmBim3  + nNotaDoisBim3  + nNotaTresBim3  + nNotaQuatroBim3
nTotalFaltaBim3 := nFaltaUmBim3 + nFaltaDoisBim3 + nFaltaTresBim3 + nFaltaQuatroBim3
nMediaBim3      := nSomaNotaBim3 / 4

nSomaNotaBim4   := nNotaUmBim4  + nNotaDoisBim4  + nNotaTresBim4  + nNotaQuatroBim4
nTotalFaltaBim4 := nFaltaUmBim4 + nFaltaDoisBim4 + nFaltaTresBim4 + nFaltaQuatroBim4
nMediaBim4      := nSomaNotaBim4 / 4

if nMediaBim1 < 6 .or. nTotalFaltaBim1 > 48
   cDependencia := cDependencia + " " + cMateriaUm
   nTotalDependencia++
   if nTotalFaltaBim1 >= 48 .and. nTotalFaltaBim1 <= 56
      nReprovadoFaltaMat1++
      nReprovadoFalta++
   endif
else
   cAprovado := cAprovado + " " + cMateriaUm
endif

if nMediaBim2 < 6 .or. nTotalFaltaBim2 > 48
   cDpendencia := cDependencia + " " + cMateriaDois
   nTotalDependencia++
    if nTotalFaltaBim2 >= 49 .and. nTotalFaltaBim2 <= 56
      nReprovadoFaltaMat2++
      nReprovadoFalta++
   endif
else
   cAprovado := cAprovado + " " + cMateriaDois
endif

if nMediaBim3 < 6 .or. nTotalFaltaBim3 > 48
   cDependencia := cDependencia + " " + cMateriaTres
   nTotalDependencia++
    if nTotalFaltaBim3 >= 49 .and. nTotalFaltaBim3 <= 56
      nReprovadoFaltaMat3++
      nReprovadoFalta++
   endif
else
   cAprovado := cAprovado + " " + cMateriaTres
endif

if nMediaBim4 < 6 .or. nTotalFaltaBim4 > 48
   cDependencia := cDependencia + " " + cMateriaQuatro
   nTotalDependencia++
    if nTotalFaltaBim4 >= 49 .and. nTotalFaltaBim4 <= 56
      nReprovadoFaltaMat4++
      nReprovadoFalta++
   endif
else
   cAprovado := cAprovado + " " + cMateriaQuatro
endif

@ 15,59 say alltrim(str(nMediaBim1))
@ 15,62 say alltrim(str(nTotalFaltaBim1))
@ 17,59 say alltrim(str(nMediaBim2))
@ 17,62 say alltrim(str(nTotalFaltaBim2))
@ 19,59 say alltrim(str(nMediaBim3))
@ 19,62 say alltrim(str(nTotalFaltaBim3))
@ 21,59 say alltrim(str(nMediaBim4))
@ 21,62 say alltrim(str(nTotalFaltaBim4))

@ 25,02 say "Pressione Qualquer tecla para mostrar os resultados"
inkey(0)

clear

if nTotalDependencia > 0
   if (cTipoBolsa == "P" .and. nTotalDependencia == 1) .or. (cTipoBolsa == "N" .and. nTotalDependencia == 2)
      cResultadoFinal := "APROVADO COM DEPENDENCIAS"
   else
      cResultadoFinal := "REPROVADO"
   endif
   nTotalMensalidade := nValorMensalidade + (nValorMensalidade * nPercentualDP)
endif

if cTipoBolsa == "I"
   nTotalMensalidade := nTotalMensalidade + (nTotalMensalidade * nPercentualDescontoIntegral)
elseif cTipoBolsa == "P"
   nTotalMensalidade := nTotalMensalidade + (nTotalMensalidade * nPercentualDescontoParcial)
endif

if nReprovadoFalta > 0
   if nReprovadoFaltaMat1 > 0
      cResultadoFinal := "REPROVADO POR FALTA NA DISCIPLINA " + cMateriaUm
      @ 09,02 say cResultadoFinal
      @ 10,02 say "Votacao do conselho: "
      @ 10,23 say "Voto 1 (S/N): "
      @ 12,38 say "Voto 2 (S/N): "
      @ 13,55 say "Voto 3 (S/N): "

      @ 11,10 get cPrimeiroVoto picture "@!" valid (cPrimeiroVoto == "S") .or. (cPrimeiroVoto == "N")
      @ 12,10 get cSegundoVoto  picture "@!" valid (cPrimeiroVoto == "S") .or. (cPrimeiroVoto == "N")
      @ 13,10 get cTerceiroVoto picture "@!" valid (cPrimeiroVoto == "S") .or. (cPrimeiroVoto == "N")

      if cPrimeiroVoto == "S"
         nAprovado++
      endif

      if cSegundoVoto == "S"
         nAprovado++
      endif

      if cTerceiroVoto == "S"
         nAprovado++
      endif

      if nAprovado >= 2
         cResultadoFinalMat1 := "Aprovado Pelo Conselho"
      else
         cResultadoFinalMat1 := "Reprovado"
      endif
   endif
endif

@ 02,02 say "RESULTADO"
@ 03,02 say "Aluno: " + cNomeAluno
@ 05,02 say "Dendencias: " + cDependencia
@ 07,02 say "Aprovacoes: " + cAprovado
@ 09,02 say "Resultado Final: " + cResultadoFinal
@ 11,02 say "Valor Mensalidade Atual:  " + alltrim(str(nTotalMensalidade))
@ 15,02 say ""
inkey(0)

