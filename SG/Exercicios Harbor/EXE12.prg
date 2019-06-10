clear

//                         EXERCÖCIO 12
nNumero1 := 0
nNumero2 := 0
nNumero3 := 0

@ 01,01 say "Digite o Primeiro Numero: "
@ 02,01 say "Digite o Segundo Numero: "
@ 03,01 say "Digite o Terceiro Numero: "

@ 01,28 get nNumero1 picture "99" valid nNumero1 > 0
@ 02,28 get nNumero2 picture "99" valid nNumero2 > 0
@ 03,28 get nNumero3 picture "99" valid nNumero3 > 0
read

nMaior := nNumero1
if nMaior < nNumero2
   nMaior := nNumero2
endif
if nMaior < nNumero3
   nMaior := nNumero3
endif


@ 05,01 say "Maior Numero Digitado: "+ alltrim(str(nMaior))

inkey(0)
