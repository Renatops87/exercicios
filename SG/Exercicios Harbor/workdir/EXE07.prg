
do while .t.
   clear

   //LER DOIS NUMEROS E MOSTRAR AS 4 OPERACOES BASICAS
   nNumero1 := 0
   nNumero2 := 0

   @ 01,01 to 18,40 double
   @ 03,12 say "4 Operacoes Basicas"
   @ 04,12 say replicate("*",19)

   @ 06,03 say "Digite o primeiro numero: "
   @ 08,03 say "Digite o segundo numero: "

   @ 07,03 get nNumero1 picture "9999"
   @ 09,03 get nNumero2 picture "9999"
   read

   if lastkey() == 27
      nRespostaSair := alert("Deseja Sair?",{"Sim","Nao"})
      if nRespostaSair == 1
         exit
      else
         loop
      endif
   endif

   nSoma := nNumero1 + nNumero2
   nSubtracao := nNumero1 - nNumero2
   nDivisao := nNumero1 / nNumero2
   nMultiplicacao := nNumero1 * nNumero2

   @ 11,03 say "RESULTADOS:"
   @ 12,03 to 17,18
   @ 13,04 say alltrim(str(nNumero1))+" + "+alltrim(str(nNumero2))+" = "+alltrim(str(nSoma))
   @ 14,04 say alltrim(str(nNumero1))+" - "+alltrim(str(nNumero2))+" = "+alltrim(str(nSubtracao))
   @ 15,04 say alltrim(str(nNumero1))+" / "+alltrim(str(nNumero2))+" = "+alltrim(str(nDivisao))
   @ 16,04 say alltrim(str(nNumero1))+" * "+alltrim(str(nNumero2))+" = "+alltrim(str(nMultiplicacao))

   @ 19,03 say ""
   inkey(0)
enddo
