Clear

Set Epoch to 1940
Set Date  British

cLetra         := Space(1)
cString        := Space(10)
nNumeroInt     := 0
nNumeroDecimal := 0
dData          := cTod("")

@ 01,01 say "Digite uma letra:"
@ 02,01 say "Digite uma palavra:"
@ 03,01 say "Informe um numero:"
@ 04,01 say "Infome um numero decimal"
@ 05,01 say "Informe uma data"

@ 01,28 get cLetra         Picture "@!"     Valid !Empty (cLetra)
@ 02,28 get cString        Picture "@!"     Valid !Empty(cString)
@ 03,28 get nNumeroInt     Picture "999"    //Valid cNumeroInt >0
@ 04,28 get nNumeroDecimal Picture "999.99" //Valid nNumeroDecimal >0
@ 05,28 get dData                           Valid !Empty(dData)
read

@ 06,01 say "A letra ‚: "+(cLetra)
@ 07,01 say "A palavra ‚: "+(cString)
@ 08,01 say "O N£mero ‚: "+Str(nNumeroInt,8)
@ 09,01 say "O n£mero decimal ‚: "+Str(nNumeroDecimal,5,2)
@ 10,01 say "A data ‚: "+dToc(dData)


