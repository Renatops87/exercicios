do while .t.
   clear

   nContador := 10
   nSoma     := 0

   while nContador <= 50
      nSoma += nContador
      nContador++
   end

   @ 01,01 say "Soma dos numeros de 10 a 50 = " + alltrim(str(nSoma))

   @ 02,02 say ""
   inkey(0)
enddo
