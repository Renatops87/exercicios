clear

set date to british
set epoch to 1940

cNomeNadador    := space(50)
nIdade          := 0
cCategoria      := space(15)
dDataNascimento := cTod("")
dDataAtual      := Date()


@ 01,01 to 09,72 double
@ 03,03 say "Nome do nadador: "
@ 05,03 say "Data de Nascimento: "

@ 03,21 get cNomeNadador picture "@!" valid !Empty(cNomeNadador)
@ 05,23 get dDataNascimento    valid !Empty(dDataNascimento)
read

nDiaNascimento := Day(dDataNascimento)
nMesNascimento := Month(dDataNascimento)
nAnoNascimento := Year(dDataNascimento)

nDiaAtual      := Day(Date())
nMesAtual      := Month(Date())
nAnoAtual      := Year(Date())

nIdade := nAnoAtual - nAnoNascimento
if nMesNascimento >= nMesAtual .and. (nDiaNascimento > nDiaAtual .or. nDiaNascimento < nDiaAtual)
   nIdade -= 1
endif

if nIdade < 5
   cCategoria := "Nadador nao possui categoria cadastrada"
elseif nIdade >= 5 .and. nIdade <= 7
   cCategoria := "Infantil A"
elseif nIdade <= 10
   cCategoria := "Infantil B"
elseif nIdade <= 13
   cCategoria := "Juvenil A"
elseif nIdade <= 17
   cCategoria := "Juvenil B"
else
   cCategoria := "Senior"
endif

clear
@ 01,01 to 09,70 double
@ 03,03 say "Nome do nadador: "    + cNomeNadador
@ 05,03 say "Idade: "              + alltrim(str(nIdade))
@ 05,15 say "Data de nascimento: " + dToc(dDataNascimento)
@ 07,03 say "Categoria: "          + cCategoria

inkey(0)

@ 11,03 say ""

