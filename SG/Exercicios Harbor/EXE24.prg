do while .t.
   clear
   do while .t.
      cFruta := space(30)
      @ 04,01 clear to 04,50
      @ 02,01 say "Digite o nome de uma fruta: "
      @ 02,30 get cFruta picture "@!" valid !Empty( cFruta )
      read

      if lastkey() == 27
         nRespostaSair := alert("Deseja Sair??",{"Sim","Nao"},"b/gr+")
         if nRespostaSair == 1
            exit
         endif
         loop
      endif

      if cFruta <> "BANANA"
         @ 04,01 say "FRUTA DIGITADA = " + cFruta
         inkey(0)
         loop
      else
         @ 04,01 say "FRUTA CORRETA"
         exit
      endif
   enddo

   if nRespostaSair == 1
      exit
   endif

   @ 19,01 say "Pressione qualquer tecla para continuar!"
   inkey(0)
enddo