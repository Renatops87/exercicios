clear

set date to british
set epoch to 1940

cMateriaUm        := "Matematica"
cMateriaDois      := "Fisica"
cMateriaTres      := "Biologia"
cMateriaQuatro    := "Quimica"

cNomeAluno        := space(50)
cCurso            := space(30)
cTipoBolsa        := space(1)
dDataNascimento   := cTod("")
nAnoLetivo        := 0
nValorMensalidade := 0

nMateria1Nota1    := 0
nMateria1Falta1   := 0
nMateria1Nota2    := 0
nMateria1Falta2   := 0
nMateria1Nota3    := 0
nMateria1Falta3   := 0
nMateria1Nota4    := 0
nMateria1Falta4   := 0

nMateria2Nota1    := 0
nMateria2Falta1   := 0
nMateria2Nota2    := 0
nMateria2Falta2   := 0
nMateria2Nota3    := 0
nMateria2Falta3   := 0
nMateria2Nota4    := 0
nMateria2Falta4   := 0

nMateria3Nota1    := 0
nMateria3Falta1   := 0
nMateria3Nota2    := 0
nMateria3Falta2   := 0
nMateria3Nota3    := 0
nMateria3Falta3   := 0
nMateria3Nota4    := 0
nMateria3Falta4   := 0

nMateria4Nota1    := 0
nMateria4Falta1   := 0
nMateria4Nota2    := 0
nMateria4Falta2   := 0
nMateria4Nota3    := 0
nMateria4Falta3   := 0
nMateria4Nota4    := 0
nMateria4Falta4   := 0

nTotalFaltasMateria1 := 0
nTotalFaltasMateria2 := 0
nTotalFaltasMateria3 := 0
nTotalFaltasMateria4 := 0
nMediaMateria1       := 0
nMediaMateria2       := 0
nMediaMateria3       := 0
nMediaMateria4       := 0
cDependenciaFalta    := ""

cDependencia    := ""
cAprovado       := ""
nDependencia    := 0
nConselho1      := 0
nConselho2      := 0
nConselho3      := 0
nConselho4      := 0
cVoto1Mat1      := space(1)
cVoto2Mat1      := space(1)
cVoto3Mat1      := space(1)
cVoto1Mat2      := space(1)
cVoto2Mat2      := space(1)
cVoto3Mat2      := space(1)
cVoto1Mat3      := space(1)
cVoto2Mat3      := space(1)
cVoto3Mat3      := space(1)
cVoto1Mat4      := space(1)
cVoto2Mat4      := space(1)
cVoto3Mat4      := space(1)
cConselhoMat1   := ""
cConselhoMat2   := ""
cConselhoMat3   := ""
cConselhoMat4   := ""
nPassouMat1     := 0
nPassouMat2     := 0
nPassouMat3     := 0
nPassouMat4     := 0
cResultadoFinal := ""

@ 00,00 to 23,80 double
@ 02,02 say "Escola Ficticia"
@ 03,02 say "Ensino fundamental, medio e tecnico"
@ 05,02 say "Aluno: "
@ 07,02 say "Data de nascimento: "
@ 07,35 say "Tipo de Bolsa: "
@ 09,02 say "Curso: "
@ 09,52 say "Serie: "
@ 11,02 say "Ano Letivo: "
@ 11,25 say "Valor da Mensalidade: "

@ 07,50 get cTipoBolsa picture "!@"
read

@ 13,13 say "     1B    "
@ 14,14 say "  N  |  F  "
@ 13,23 say "     2B    "
@ 14,24 say "  N  |  F  "
@ 13,33 say "     3B    "
@ 14,34 say "  N  |  F  "
@ 13,43 say "     4B    "
@ 14,44 say "  N  |  F  "
@ 14,54 say "   MEDIA   "

@ 15,02 say cMateriaUm
@ 17,02 say cMateriaDois
@ 19,02 say cMateriaTres
@ 21,02 say cMateriaQuatro

@ 15,15 get nMateria1Nota1  picture "99.9"
@ 15,21 get nMateria1Falta1 picture "99"
@ 15,25 get nMateria1Nota2  picture "99.9"
@ 15,31 get nMateria1Falta2 picture "99"
@ 15,35 get nMateria1Nota3  picture "99.9"
@ 15,41 get nMateria1Falta3 picture "99"
@ 15,45 get nMateria1Nota4  picture "99.9"
@ 15,51 get nMateria1Falta4 picture "99"

@ 17,15 get nMateria2Nota1  picture "99.9"
@ 17,21 get nMateria2Falta1 picture "99"
@ 17,25 get nMateria2Nota2  picture "99.9"
@ 17,31 get nMateria2Falta2 picture "99"
@ 17,35 get nMateria2Nota3  picture "99.9"
@ 17,41 get nMateria2Falta3 picture "99"
@ 17,45 get nMateria2Nota4  picture "99.9"
@ 17,51 get nMateria2Falta4 picture "99"

@ 19,15 get nMateria3Nota1  picture "99.9"
@ 19,21 get nMateria3Falta1 picture "99"
@ 19,25 get nMateria3Nota2  picture "99.9"
@ 19,31 get nMateria3Falta2 picture "99"
@ 19,35 get nMateria3Nota3  picture "99.9"
@ 19,41 get nMateria3Falta3 picture "99"
@ 19,45 get nMateria3Nota4  picture "99.9"
@ 19,51 get nMateria3Falta4 picture "99"

@ 21,15 get nMateria4Nota1  picture "99.9"
@ 21,21 get nMateria4Falta1 picture "99"
@ 21,25 get nMateria4Nota2  picture "99.9"
@ 21,31 get nMateria4Falta2 picture "99"
@ 21,35 get nMateria4Nota3  picture "99.9"
@ 21,41 get nMateria4Falta3 picture "99"
@ 21,45 get nMateria4Nota4  picture "99.9"
@ 21,51 get nMateria4Falta4 picture "99"
read

nTotalFaltasMateria1 := nMateria1Falta1 + nMateria1Falta2 + nMateria1Falta3 + nMateria1Falta4
nTotalFaltasMateria2 := nMateria2Falta1 + nMateria2Falta2 + nMateria2Falta3 + nMateria2Falta4
nTotalFaltasMateria3 := nMateria3Falta1 + nMateria3Falta2 + nMateria3falta3 + nMateria3Falta4
nTotalFaltasMateria4 := nMateria4Falta1 + nMateria4Falta2 + nMateria4Falta3 + nMateria4Falta4
nMediaMateria1       := (nMateria1Nota1 + nMateria1Nota2  + nMateria1Nota3  + nMateria1Nota4) / 4
nMediaMateria2       := (nMateria2Nota1 + nMateria2Nota2  + nMateria2Nota3  + nMateria2Nota4) / 4
nMediaMateria3       := (nMateria3Nota1 + nMateria3Nota2  + nMateria3Nota3  + nMateria3Nota4) / 4
nMediaMateria4       := (nMateria4Nota1 + nMateria4Nota2  + nMateria4Nota3  + nMateria4Nota4) / 4

@ 15,58 say alltrim(str(nMediaMateria1))
@ 17,58 say alltrim(str(nMediaMateria2))
@ 19,58 say alltrim(str(nMediaMateria3))
@ 21,58 say alltrim(str(nMediaMateria4))

if nMediaMateria1 < 6 .or. nTotalFaltasMateria1 > 48
   cDependencia := cDependencia + " " + cMateriaUm
   nDependencia+=1
   if nTotalFaltasMateria1 >= 49 .and. nTotalFaltasMateria1 <= 56 .and. nMediaMateria1 > 6
      nConselho1++

      @ 15,65 get cVoto1Mat3 picture "!@"
      @ 15,68 get cVoto2Mat3 picture "!@"
      @ 15,71 get cVoto3Mat3 picture "!@"
      read

      if cVoto1Mat1 == "S"
         nPassouMat1++
      endif
      if cVoto2Mat1 == "S"
         nPassouMat1++
      endif
      if cVoto3Mat1 == "S"
         nPassouMat1++
      endif

      if nPassouMat1 >= 2
         cAprovado := cAprovado + " " +  cMateriaUm
      else
         cDependencia := cDependencia + " " + cMateriaUm
      endif
   else
      cDependencia := cDependencia + " " + cMateriaUm
   endif
else
    cAprovado := cAprovado + " " +  cMateriaUm
endif

if nMediaMateria2 < 6 .or. nTotalFaltasMateria2 > 48
   cDependencia := cDependencia + " " + cMateriaDois
   nDependencia++
   if nTotalFaltasMateria2 >= 49 .and. nTotalFaltasMateria2 <= 56 .and. nMediaMateria1 > 6
      nConselho2++
      @ 17,65 get cVoto1Mat2 picture "!@"
      @ 17,68 get cVoto2Mat2 picture "!@"
      @ 17,71 get cVoto3Mat2 picture "!@"
      read

      if cVoto1Mat2 == "S"
         nPassouMat2++
      endif
      if cVoto2Mat2 == "S"
         nPassouMat2++
      endif
      if cVoto3Mat2 == "S"
         nPassouMat2++
      endif

      if nPassouMat2 >= 2
         cAprovado := cAprovado + " " +  cMateriaDois
      else
         cDependencia := cDependencia + cMateriaDois
      endif
   endif
else
    cAprovado := cAprovado + " " +  cMateriaDois
endif

if nMediaMateria3 < 6 .or. nTotalFaltasMateria3 > 48
   cDependencia := cDependencia + " " + cMateriaTres
   nDependencia++
   if nTotalFaltasMateria3 >= 49 .and. nTotalFaltasMateria3 <= 56 .and. nMediaMateria1 > 6
      nConselho3++
      @ 19,65 get cVoto1Mat3 picture "!@"
      @ 19,68 get cVoto2Mat3 picture "!@"
      @ 19,71 get cVoto3Mat3 picture "!@"
      read

      if cVoto1Mat3 == "S"
         nPassouMat3++
      endif
      if cVoto2Mat3 == "S"
         nPassouMat3++
      endif
      if cVoto3Mat3 == "S"
         nPassouMat3++
      endif

      if nPassouMat3 >= 2
         cAprovado := cAprovado + " " +  cMateriaTres
      else
         cDependencia := cDependencia + cMateriaTres
      endif
   endif
else
    cAprovado := cAprovado + " " +  cMateriaTres
endif

if nMediaMateria4 < 6 .or. nTotalFaltasMateria4 > 48
   cDependencia := cDependencia + " " + cMateriaQuatro
   nDependencia++
   if nTotalFaltasMateria4 >= 49 .and. nTotalFaltasMateria4 <= 56 .and. nMediaMateria4 > 6
      nConselho4++
      @ 21,65 get cVoto1Mat4 picture "!@"
      @ 21,68 get cVoto2Mat4 picture "!@"
      @ 21,71 get cVoto3Mat4 picture "!@"
      read

      if cVoto1Mat4 == "S"
         nPassouMat4++
      endif
      if cVoto2Mat4 == "S"
         nPassouMat4++
      endif
      if cVoto3Mat4 == "S"
         nPassouMat4++
      endif

      if nPassouMat4 >= 2
         cAprovado := cAprovado + " " +  cMateriaQuatro
      else
         cDependencia := cDependencia + cMateriaQuatro
      endif
   endif
else
    cAprovado := cAprovado + " " +  cMateriaQuatro
endif

@24,02 say ""

inkey(0)
clear

@ 03,01 say "APROVADO EM: " + cAprovado
@ 05,01 say "REPROVADO EM: " + cDependencia


if (nDependencia > 0)
   if (cTipoBolsa == "P" .and. nDependencia == 1) .or. (cTipoBolsa == "N" .and. nDependencia == 2)
      cResultadoFinal := "APROVADO COM DEPENDENCIAS"
   elseif (cTipoBolsa == "P" .and. nDependencia > 1) .or. (cTipoBolsa == "N" .and. nDependencia > 2)
      cResultadoFinal := "REPROVADO"
   else
      cResultadoFinal := "APROVADO"
   endif

   if (cTipoBolsa == "I")
      cResultadoFinal := "REPROVADO"
   else
      cResultadoFinal := "APROVADO"
   endif
else
   cResultadoFinal := "APROVADO"
endif

@ 06,01 say "RESULTADO FINAL: " + cResultadoFinal
inkey(0)
@ 19,02 say ""


