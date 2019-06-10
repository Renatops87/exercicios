clear

nContador  := 1
nLinha     := 6
nResultado := 0
nNumero    := 0

@ 01,01 to 18,45 double
@ 02,20 say "TABUADA"
@ 04,03 say "Digite o numero que deseja calcular: "

@ 04,40 get nNumero picture "999" valid nNumero > 0
read

@ 06,14 to 17,29

while nContador <= 10
   nResultado := nNumero * nContador

   @ nLinha + 1, 17 say alltrim(str(nNumero)) + " x " + alltrim(str(nContador));
   + " = " + alltrim(str(nResultado))

   nContador++
   nLinha++
end

@ 19,03 say ""

inkey(0)
