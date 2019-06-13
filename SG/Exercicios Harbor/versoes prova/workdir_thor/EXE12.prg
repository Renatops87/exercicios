clear

nNumero1 := 0
nNumero2 := 0
nNumero3 := 0

@ 01,01 say "Digite o Primeiro Numero: "
@ 02,01 say "Digite o Segundo Numero: "
@ 03,01 say "Digite o Terceiro Numero: "

@ 01,28 get nNumero1 picture "99"
@ 02,28 get nNumero2 picture "99"
@ 03,28 get nNumero3 picture "99"
read

nMaior := nNumero1
if nNumero2 > nMaior .and. nNumero2 > nNumero3
   nMaior := nNumero2
   @ 05,01 say "Maior Numero: "+alltrim(str(nMaior))
else
if nNumero3 > nMaior
   nMaior := nNumero3
   @ 05,01 say "Maior Numero: "+alltrim(str(nMaior))
else
   @ 05,01 say "Iguais"
endif
endif
