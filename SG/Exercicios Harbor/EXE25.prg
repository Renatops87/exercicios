do while .t.
   clear
   nRetorno     := 0
   nContaPessoa := 0
   nContaHomens := 0
   nContaMulher := 0
   nGostou      := 0
   nNaoGostou   := 0
   do while .t.
      if nRetorno == 0
         cPessoa := space(50)
         cSexo   := space(1)
         cOpniao := space(1)
      else
         cSexo   := space(1)
         cOpniao := space(1)
      endif

      @ 02,01 say "Digite o nome do entrevistado: "
      @ 03,01 say "Sexo.........................: "
      @ 04,01 say "Gostou do Produto?...........: "

      @ 02,33 get cPessoa picture "@!" valid !Empty( cPessoa )
      read
      if lastkey() == 27
         nRespostaSair := alert("Deseja Sair??",{"Sim","Nao"},"b/gr+")
         if nRespostaSair == 1
            exit
         endif
         loop
      endif

      @ 03,33 get cSexo   picture "@!" valid !Empty( cSexo )
      read

      if lastkey() == 27
         nRespostaSair := alert("Deseja Sair??",{"Sim","Nao"},"b/gr+")
         if nRespostaSair == 1
            exit
         endif
         loop
      endif

      if cSexo  <> "M" .and. cSexo <> "F"
         alert("Caracter Invalido! Digite M ou F",,)
         nRetorno++
         loop
      endif

      @ 04,33 get cOpniao picture "@!" valid !Empty( cOpniao )
      read

      if lastkey() == 27
         nRespostaSair := alert("Deseja Sair??",{"Sim","Nao"},"b/gr+")
         if nRespostaSair == 1
            exit
         endif
         loop
      endif

      if cSexo  <> "S" .and. cSexo <> "N"
         alert("Caracter Invalido! Digite M ou F",,)
         nRetorno++
         loop
      endif

      if cSexo == "M"
         nContaHomens++
      else
         nContaMulher++
      endif

      if cOpniao == "S"
         nGostou++
      else
         nNaoGostou++
      endif

      nContaPessoa++
   enddo

   if nRespostaSair == 1
      exit
   endif
   clear
   @ 02,01 say "Percentual de Homens entrevistados: " + nPercentualHomens

   @ 19,01 say "Pressione qualquer tecla para continuar!"
   inkey(0)
enddo