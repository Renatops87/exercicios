
do while .t.

   clear
   nNumero1 := 0
   nNumero2 := 0
   @ 01,01 to 14,50
   @ 02,02 say "Valor de A: "
   @ 03,02 say "Valor de B: "

   @ 02,15 get nNumero1 picture "999.99"
   @ 03,15 get nNumero2 picture "999.99"
   read

   if lastkey() == 27
      nRespostaSair := Alert("Deseja Sair?",{"Sim","Nao"})
      if nRespostaSair == 1
         exit
      else
         loop
      endif
   endif

   nAuxiliar := nNumero2
   nNumero2 := nNumero1
   nNumero1 := nAuxiliar

   @ 05,02 say "Trocando valores..."
   inkey(2)

   @ 08,02 to 11,35
   @ 09,03 say "Novo valor de A = "+alltrim(str(nNumero1))
   @ 10,03 say "Novo valor de B = "+alltrim(str(nNumero2))
   @ 12,02 say ""
   @ 13,02 say "Pressione qualquer tecla para continuar!"
   @ 15,02 say ""
   inkey(0)

enddo
