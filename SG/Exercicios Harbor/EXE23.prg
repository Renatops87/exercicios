do while .t.
   clear

   do while .t.
      nNumero := 0
      @ 04,01 clear to 04,50
      @ 02,01 say "Digite um numero de 1 a 10: "
      @ 02,30 get nNumero picture "99" valid nNumero > 0 .and. nNumero <=10
      read

      if lastkey() == 27
         nRespostaSair := alert("Deseja cancelar??",{"Sim","Nao"},"b/gr+")
         if nRespostaSair == 1
            exit
         endif
         loop
      endif

      if nNumero <> 5
         @ 04,01 say "ERROU!"
         inkey(0)
         loop
      else
         @ 04,01 say "ACERTOU!"
         exit
      endif
   enddo

   @ 19,01 say "Pressione qualquer tecla para continuar!"
   inkey(0)
enddo