do while .t.
   clear

   nContador := 0
   nLinha    := 12

   do while nContador <= 10
      if nContador = 10
         exit
      else
         nContador++
         @ nContador + 1, 01 say nContador
      endif
    enddo

   inkey(2)

   do while nContador >= 1
      @ nLinha + 1, 01 say nContador
      nContador--
      nLinha++
   enddo

   if lastkey() == 27
      nRespostaSair = alert("Deseja Sair?",{"Sim","Nao"})
      if nRespostaSair == 1
         exit
      else
         loop
      endif
   endif

   @ 08,01 say "Pressione qualquer tecla para continuar"

   inkey(0)

enddo
